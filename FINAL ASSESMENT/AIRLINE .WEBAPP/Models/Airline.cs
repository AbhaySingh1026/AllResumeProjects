using Microsoft.EntityFrameworkCore.Metadata.Internal;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace AIRLINE_.WEBAPP.Models
{
    public class Airline
    {
        [Required]
        [RegularExpression("^[0-9]+$", ErrorMessage = "Only numbers are allowed")]
        public int Id { get; set; }

        [Required]
        [MaxLength(50)]
        [RegularExpression("^[a-zA-Z0-9]+[ a-zA-Z0-9/-]*$", ErrorMessage = "Only alphabets, numerics, hyphen, and space b/w 2 alphabets is allowed")]
        [Display(Name = "Airline Name")]
        public string? Name { get; set; }

        [Required]
        [MaxLength(30)]
        [RegularExpression("^[a-zA-Z]+[ a-zA-Z]*$", ErrorMessage = "Only alphabets and space b/w 2 alphabets is allowed")]
        [Display(Name = "From City")]
        public string? FromCity { get; set; }

        [Required]
        [MaxLength(30)]
        [RegularExpression("^[a-zA-Z]+[ a-zA-Z]*$", ErrorMessage = "Only alphabets and space b/w 2 alphabets is allowed")]
        [Display(Name = "To City")]
        public string? ToCity { get; set; }

        [Required]
        [RegularExpression("^[0-9]+$", ErrorMessage = "Only numbers are allowed")]
        [Display(Name = "Fare")]
        public int Fare { get; set; }
    }
}
