using Microsoft.AspNetCore.Mvc;
using StroyTrend.POCOs;
using StroyTrend.Services;

namespace StroyTrend.Controllers;

[ApiController]
[Route("/entries")]
public class EntryController : ControllerBase
{
    private readonly EntryProviderService _entryProviderService;

    public EntryController(EntryProviderService entryProviderService)
    {
        _entryProviderService = entryProviderService;
    }

    [HttpPost]
    public async Task<EntryResult> GetEntriesAsync([FromQuery] int projectId, [FromBody] EntryRequest request)
        => await _entryProviderService.GetEntriesAsync(projectId, request);

    [HttpGet]
    [Route("distributions")]
    public Dictionary<string, int> GetEntryRequestDistributionKinds()
        => _entryProviderService.GetEntryRequestDistributionKinds();
}