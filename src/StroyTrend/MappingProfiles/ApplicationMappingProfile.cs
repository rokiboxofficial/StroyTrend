using AutoMapper;
using StroyTrend.Data;
using StroyTrend.DataTransferObjects;

namespace StroyTrend.MappingProfiles;

public class ApplicationMappingProfile : Profile
{
    public ApplicationMappingProfile()
    {
        CreateMap<Project, ProjectOverviewDTO>();
    }
}