﻿using Microsoft.EntityFrameworkCore;
using StroyTrend.Data;
using StroyTrend.POCOs;

namespace StroyTrend.Services;

public class EntryProviderService
{
    private readonly ApplicationContext _applicationContext;
    private readonly Dictionary<DistributionKind, (Func<Entry, object> groupKeySelector, Func<IGrouping<object, Entry>, string> groupKeyToName)> _distributionFunctionsByKind = new()
    {
        [DistributionKind.Day] = ((Entry entry) => entry.Date, (grouping) => $"{grouping.Key} (UTC)"),
        [DistributionKind.Minute] = ((Entry entry) => entry.Date.Minute, (grouping) => $"{grouping.Key} minutes"),
    };

    public EntryProviderService(ApplicationContext applicationContext)
    {
        _applicationContext = applicationContext;
    }

    public async Task<EntryResult> GetEntriesAsync(int projectId, EntryRequest request)
    {
        var totalCount = 0L;

        var distribtuion = _distributionFunctionsByKind[(DistributionKind) request.DistributionId];
        var groupKeySelector = distribtuion.groupKeySelector!;

        var rawEntries = await _applicationContext.Entries.Where(entry => entry.ProjectId == projectId).Where(entry => entry.Date >= request.From).Where(entry => entry.Date <= request.To)
            .ToListAsync();

        var entries = rawEntries
            .GroupBy(distribtuion.groupKeySelector)
            .ToDictionary(distribtuion.groupKeyToName, grouping => grouping.ToDictionary(entry => entry.Key,  entry => { totalCount += entry.Value; return entry.Value; }));

        return new EntryResult(totalCount, entries);
    }

    public Dictionary<string, int> GetEntryRequestDistributionKinds()
        => Enum.GetValues<DistributionKind>().ToDictionary(kind => kind.ToString(), kind => (int) kind);
}