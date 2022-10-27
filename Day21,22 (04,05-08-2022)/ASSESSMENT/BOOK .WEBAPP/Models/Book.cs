using System.ComponentModel.DataAnnotations;

namespace BOOK_.WEBAPP.Models
{
    public class Book
    {
        public int Id { get; set; }

        [Required(ErrorMessage = "Required")]
        [MaxLength(50)]
        [RegularExpression("^[a-zA-Z0-9]+[ ,a-zA-Z0-9/-]*$", ErrorMessage = "Name format not correct")]
        public string? Name { get; set; }

        [Required(ErrorMessage = "Required")]
        [MaxLength(50)]
        [RegularExpression("^[a-zA-Z]+[ a-zA-Z/-]*$", ErrorMessage = "Name format not correct")]
        public string? Zoner { get; set; }

        [Required(ErrorMessage = "Required")]
        public DateTime? ReleaseDate { get; set; }

        [Required(ErrorMessage = "Required")]
        
        [Range(0, 999999999, ErrorMessage = "Value must be between 0 to 999999999")]
        [RegularExpression("^[0-9]+", ErrorMessage = "Only numbers are allowed")]
        public int Cost { get; set; }

        [Required(ErrorMessage = "Required")]
        public IFormFile? Image { get; set; }

        public string? ImagePath { get; set; }
    }
}
