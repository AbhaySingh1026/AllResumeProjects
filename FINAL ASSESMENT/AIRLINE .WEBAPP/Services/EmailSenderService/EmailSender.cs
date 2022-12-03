using AIRLINE_.WEBAPP.Models;
using System.Net.Mail;
using System.IO;

namespace AIRLINE_.WEBAPP.Services.EmailSenderService
{
    public class EmailSender : IEmailSender
    {
        private readonly IConfiguration _configuration;
        private readonly AppSettings settings;
        IWebHostEnvironment _webHostEnvironment;
        public EmailSender(IConfiguration configuration, IWebHostEnvironment webHostEnvironment)
        {
            _configuration = configuration;
            settings = new AppSettings();
            _configuration.Bind(settings);     //Binds app settings key values to class object(you passed) i.e for getting full appsettigs and binding it to class properties.
                                               //string x = _configuration.GetSection("sectionName").GetValues<string>(keyName);  for getting value of particuler key from app settings.json
                                               //Class obj = _configuration.GetSection("sectionName").Get<Class>();             //for getting a particular seciton and binding it to class properties.
            _webHostEnvironment = webHostEnvironment;
        }
        public async Task SendEmailAsync(string receiversEmail, string PageNameForMakingHTMLBody)
        {
            string sendersEmail = settings.AdminCredentials.Email, password = settings.AdminCredentials.Password, loginUrl = settings.RegistrationEmail.LoginURL, appURL = settings.URLs.AppBaseURL;
            
            MailMessage mailMessageObj = new MailMessage(sendersEmail, receiversEmail);
            mailMessageObj.Subject = "Your Registration is Successful";
            mailMessageObj.Body = await MakeHtmlBodyAsync(loginUrl, appURL, sendersEmail, PageNameForMakingHTMLBody);
            mailMessageObj.IsBodyHtml = true;
            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
            smtpClient.Credentials = new System.Net.NetworkCredential()
            {
                UserName = sendersEmail,
                Password = password
            };
            smtpClient.EnableSsl = true;
            smtpClient.Send(mailMessageObj);
        }

        private async Task<string> MakeHtmlBodyAsync(string loginUrl, string appURL, string sendersEmail, string PageNameForMakingHTMLBody)
        {
            string pagePath = _webHostEnvironment.WebRootPath + @"\htmlBodies\" + PageNameForMakingHTMLBody + ".html";
            string body = string.Empty;
            body = await File.ReadAllTextAsync(pagePath);
            body = body.Replace("{{LoginURL}}", loginUrl);
            body = body.Replace("{{AppURL}}", appURL);
            body = body.Replace("{{TwitterURL}}", sendersEmail);
            body = body.Replace("{{FacebookURL}}", sendersEmail);
            body = body.Replace("{{LinkedinURL}}", sendersEmail);
            return body;
        }
    }
}
