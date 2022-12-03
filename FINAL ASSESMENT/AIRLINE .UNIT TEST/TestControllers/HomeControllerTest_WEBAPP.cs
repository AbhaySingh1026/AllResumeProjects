using AIRLINE_.WEBAPP.Areas.Identity.Data;
using AIRLINE_.WEBAPP.Controllers;
using AutoMapper;
using Castle.Core.Configuration;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Moq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AIRLINE_.UNIT_TEST.TestControllers
{
    public class HomeControllerTest_WEBAPP {
        private readonly Mock<UserManager<ApplicationUser>> mock = new Mock<UserManager<ApplicationUser>>();
        private readonly Mock<ILogger<HomeController>> mock2 = new Mock<ILogger<HomeController>>();
        private readonly Mock<IConfiguration> mock3 = new Mock<IConfiguration>();
        private readonly HomeController _sut;
        public HomeControllerTest_WEBAPP()
        {
            _sut = new HomeController(mock.Object,mock2.Object, (Microsoft.Extensions.Configuration.IConfiguration)mock3.Object);
        }

        [Fact]
        public void CheckEmailAvailability_ShouldReturn_JsonResult_WithMessage_InputCantBeNull_WhenNullValueIsPassed()
        {
            var testResult = _sut.CheckEmailAvailability(null);
            Assert.IsType<JsonResult>(testResult);
            Assert.Equal("Input can't be null", testResult.Value);
        }

        [Fact]
        public void CheckPanAvailability_ShouldReturn_JsonResult_WithMessage_InputCantBeNull_WhenNullValueIsPassed()
        {
            var testResult = _sut.CheckPanAvailability(null);
            Assert.IsType<JsonResult>(testResult);
            Assert.Equal("Input can't be null", testResult.Value);
        }
    }
}
