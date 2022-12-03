
using AIRLINE_.EF.ApiModels;
using AIRLINE_.WEBAPI.ViewModels;
using AutoMapper;

namespace AIRLINE_.WEBAPI.MappingProfiles
{
    public class MappingProfile : Profile
    {
        public MappingProfile()
        {
            CreateMap<AirlineApiModel, AirlineViewModel>().ReverseMap();
        }
    }
}
