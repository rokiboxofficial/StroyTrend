using Microsoft.AspNetCore.Mvc;
using StroyTrend.Data;
using StroyTrend.DataTransferObjects;
using StroyTrend.Services;

namespace StroyTrend.Controllers;

[ApiController]
[Route("/projects")]
public class ProjectController
{
    private readonly ProjectProviderService _projectProviderService;

    public ProjectController(ProjectProviderService projectProviderService)
    {
        _projectProviderService = projectProviderService;
    }

    [HttpGet]
    [Route("{projectId::int}")]
    public async Task<Project> GetProjectAsync([FromRoute] int projectId)
        => await _projectProviderService.GetProjectAsync(projectId);

    [HttpGet]
    public async Task<IEnumerable<ProjectOverviewDTO>> GetProjectsAsync()
        => await _projectProviderService.GetProjectsAsync();
}