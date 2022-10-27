using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CONNECT_API_TO_DB_.EF.Model
{
    public class Book
    {
        [Key]
        public int Id { get; set; }
        [Required]
        [Column(TypeName = "Varchar(50)")]
        public string? Name { get; set; }
        [Required]
        [Column(TypeName = "Varchar(50)")]
        public string? Zoner { get; set; }
        [Required]
        [Column(TypeName = "Datetime")]
        public DateTime? ReleaseDate { get; set; }
        [Required]
        public int Cost { get; set; }
        [Required]
        public string? ImagePath { get; set; }
    }
}
