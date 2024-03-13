using AutoMapper;
using Microsoft.EntityFrameworkCore;
using StroyTrend.Data;
using StroyTrend.DataTransferObjects;

namespace StroyTrend.Services;

public class ProjectProviderService
{
    private readonly ApplicationContext _applicationContext;
    private readonly IMapper _mapper;

    public ProjectProviderService(ApplicationContext applicationContext, IMapper mapper)
    {
        _applicationContext = applicationContext;
        _mapper = mapper;
    }

    public async Task<Project> GetProjectAsync(int projectId)
        => await _applicationContext.Projects.FirstAsync(project => project.Id == projectId);

    public async Task<IEnumerable<ProjectOverviewDTO>> GetProjectsAsync()
    {
        var projects = await _applicationContext.Projects.ToArrayAsync();
        var projectDTOs = projects.Select(_mapper.Map<ProjectOverviewDTO>);

        return projectDTOs;
    }
}