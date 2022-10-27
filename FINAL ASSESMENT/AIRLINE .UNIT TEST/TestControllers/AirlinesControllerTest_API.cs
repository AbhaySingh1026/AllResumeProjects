using AIRLINE_.EF;
using AIRLINE_.WEBAPI.Controllers;
using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using Moq;

namespace AIRLINE_.UNIT_TEST.TestControllers
{
    public class AirlinesControllerTest_API
    {
        private readonly Mock<AirlineDbContext> mock = new Mock<AirlineDbContext>();
        private readonly Mock<IMapper> mock2 = new Mock<IMapper>();
        private readonly AirlinesController _sut;
        public AirlinesControllerTest_API()
        {
            _sut = new AirlinesController(mock.Object, mock2.Object);
        }

        [Fact]
        public void ShowAllAirlines_ShouldNotReturnNullInAnyCase()
        {
            var testResult = _sut.ShowAllAirlines();
            Assert.NotNull(testResult);
        }

        [Fact]
        public void AddOneAirline_ShouldReturn_BadRequestObjectResult_WhenNullValueIsPassed()
        {
            var testResult = _sut.AddOneAirline(null);
            Assert.IsType<BadRequestObjectResult>(testResult.Result);
        }

        [Fact]
        public void UpdateOneAirline_ShouldReturn_BadRequestObjectResult_WhenNullValueIsPassed_InAirlineViewModel()
        {
            Random random = new Random();
            int randomId = random.Next();
            var testResult = _sut.UpdateOneAirline(randomId, null);
            Assert.IsType<BadRequestObjectResult>(testResult.Result);
        }

        [Fact]
        public void CheckAirlineNameAvailability_ShouldReturn_BadRequestObjectResult_WhenNullValueIsPassed()
        {
            var testResult = _sut.CheckAirlineNameAvailability(null);
            Assert.IsType<BadRequestObjectResult>(testResult.Result);
        }
    }
}
