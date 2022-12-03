using System.Security.Policy;

namespace AIRLINE_.WEBAPP.Models
{
    public class AppSettings
    {
        public ConnectionStrings? ConnectionStrings { get; set; }
        public RegistrationEmail? RegistrationEmail { get; set; }
        public URLs? URLs { get; set; }
        public AdminCredentials? AdminCredentials { get; set; }
    }
    public class ConnectionStrings
    {
        public string? AirlineDbContextConnection { get; set; }
    }
    public class RegistrationEmail
    {
        public string? LoginURL { get; set; }
    }
    public class URLs
    {
        public string? AppBaseURL { get; set; }
        public string? ApiBaseURL { get; set; }
    }
    public class AdminCredentials
    {
        public string? Email { get; set; }
        public string? Password { get; set; }
    }
}
