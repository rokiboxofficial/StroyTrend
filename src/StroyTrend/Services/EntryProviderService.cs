using Microsoft.EntityFrameworkCore;
using StroyTrend.Data;
using StroyTrend.POCOs;

namespace StroyTrend.Services;

public class EntryProviderService
{
    private readonly ApplicationContext _applicationContext;
    private readonly Dictionary<DistributionKind, (Func<Entry, object> groupKeySelector, Func<IGrouping<object, Entry>, string> groupingToName)> _distributionFunctionsByKind = new()
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
        double totalCount = 0;

        var distribtuion = _distributionFunctionsByKind[(DistributionKind) request.DistributionId];
        var groupKeySelector = distribtuion.groupKeySelector!;

        var rawEntries = await _applicationContext.Entries
            .Where(entry => entry.ProjectId == projectId)
            .Where(entry => entry.Date >= request.From)
            .Where(entry => entry.Date <= request.To)
            .ToListAsync();

        var groups = rawEntries
            .GroupBy(distribtuion.groupKeySelector);

        var entries = new Dictionary<string, Dictionary<string, double>>();
        foreach(var group in groups)
        {
            var valueByKey = new Dictionary<string, double>();
            foreach(var entry in group)
            {
                totalCount += entry.Value;
                var key = entry.Key;

                if (!valueByKey.ContainsKey(key))
                    valueByKey[key] = 0;

                valueByKey[key] += entry.Value;
            }

            var name = distribtuion.groupingToName(group);
            entries[name] = valueByKey;
        }

        return new EntryResult(totalCount, entries);
    }

    public Dictionary<string, int> GetEntryRequestDistributionKinds()
        => Enum.GetValues<DistributionKind>().ToDictionary(kind => kind.ToString(), kind => (int) kind);
}