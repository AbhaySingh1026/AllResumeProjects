using AIRLINE_.WEBAPP.Areas.Identity.Data;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Data;

namespace AIRLINE_.WEBAPP.Controllers
{
    [Authorize(Roles = "admin")]
    public class AdminController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly UserManager<ApplicationUser> _userManager;
        public AdminController(ILogger<HomeController> logger, UserManager<ApplicationUser> userManager)
        {
            _logger = logger;
            _userManager = userManager;
        }

        [HttpGet]
        public async Task<IActionResult> ShowAllNonApprovedRequests(){
            var users = await _userManager.Users.Where(user => user.Approved == "False").ToListAsync();
            return View(users);
        }

        [HttpPut]
        public async Task<IActionResult> ApproveOrReject(string userId, string status)
        {
            if (userId == null || status == null) return BadRequest("Input can't be null");
            else
            {
                var user = await _userManager.Users.Where(user => user.Id == userId).FirstOrDefaultAsync();
                if (user == null) return NotFound($"No record present with {userId} user Id.");
                else
                {
                    if (status == "True" || status == "Fail")
                    {
                        user.Approved = $"{status}";
                        await _userManager.UpdateAsync(user);
                        return Json("Success");
                    }
                    else
                    {
                        return BadRequest("Input values are not as expected");
                    }
                }
            }
        }

        [HttpGet]
        public async Task<IActionResult> GetOperators()
        {
            var users = await _userManager.Users.Where(user => user.Id != "UserId-101").ToListAsync();
            return View(users);
        }
        
        public async Task<IActionResult> DeleteOperator(string userId)
        {
            if (string.IsNullOrEmpty(userId)) return BadRequest("Input can't be null");
            else
            {
                var removeUser = await _userManager.Users.Where(user => user.Id == userId).FirstOrDefaultAsync();
                if (removeUser == null) return NotFound($"No record present with {userId} user Id.");
                else
                {
                    await _userManager.DeleteAsync(removeUser);
                    return RedirectToAction("GetOperators");
                }
            }
        }        
    }
}
