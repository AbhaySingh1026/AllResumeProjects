using AIRLINE_.WEBAPP.Areas.Identity.Data;
using AIRLINE_.WEBAPP.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;

namespace AIRLINE_.WEBAPP.Controllers
{
    public class HomeController : Controller
    {
        
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly ILogger<HomeController> _logger;
        private readonly IConfiguration _configuration;
        public HomeController(UserManager<ApplicationUser> userManager, ILogger<HomeController> logger, IConfiguration configuration)
        {
            _userManager = userManager;
            _logger = logger;
            _configuration = configuration;
        }

        public IActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public JsonResult CheckEmailAvailability(string recievedEmail)
        {
            if(string.IsNullOrEmpty(recievedEmail)) return Json("Input can't be null");

            var recordWithRecievedEmail = _userManager.Users.Where(user => user.Email == recievedEmail).FirstOrDefault();

            if (recordWithRecievedEmail == null)
            {
                return Json(1);
            }
            else
            {
                return Json(0);
            }
        }

        [HttpPost]
        public JsonResult CheckPanAvailability(string recievedPanNumber)
        {
            if (string.IsNullOrEmpty(recievedPanNumber)) return Json("Input can't be null");

            var recordWithRecievedPan = _userManager.Users.Where(user => user.PanNumber == recievedPanNumber).FirstOrDefault();

            if (recordWithRecievedPan == null)
            {
                return Json(1);
            }
            else
            {
                return Json(0);
            }
        }

        [HttpGet]
        public string[] GetAppAndApiURL()
        {
            return _configuration.GetSection("URLs").Get<string[]>();
;
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}