using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace AIRLINE_.EF.ApiModels
{
    public class AirlineApiModel
    {
        [Key]
        public int Id { get; set; }

        [Required]
        [Column(TypeName = "Varchar(50)")]
        public string? Name { get; set; }

        [Required]
        [Column(TypeName = "Varchar(30)")]
        public string? FromCity { get; set; }

        [Required]
        [Column(TypeName = "Varchar(30)")]
        public string? ToCity { get; set; }

        [Required]
        public int Fare { get; set; }
    }
}
