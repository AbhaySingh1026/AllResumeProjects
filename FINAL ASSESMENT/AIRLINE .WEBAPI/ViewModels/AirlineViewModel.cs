using Microsoft.EntityFrameworkCore.Metadata.Internal;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace AIRLINE_.WEBAPI.ViewModels
{
    public class AirlineViewModel
    {
        public string? Name { get; set; }
        public string? FromCity { get; set; }
        public string? ToCity { get; set; }
        public int Fare { get; set; }
    }
}
