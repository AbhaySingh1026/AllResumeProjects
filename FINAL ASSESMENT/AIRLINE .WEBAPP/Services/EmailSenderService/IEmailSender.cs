namespace AIRLINE_.WEBAPP.Services.EmailSenderService
{
    public interface IEmailSender
    {
        Task SendEmailAsync(string receiversEmail, string PageNameForMakingHTMLBody);
    }
}