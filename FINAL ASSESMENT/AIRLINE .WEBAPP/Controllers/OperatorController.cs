using AIRLINE_.WEBAPP.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion.Internal;
using Newtonsoft.Json;
using System.Text;

namespace AIRLINE_.WEBAPP.Controllers
{
    [Authorize(Roles = "operator")]
    public class OperatorController : Controller
    {
        IConfiguration _configuration;
        Uri apiURL;
        HttpClient client;
        public OperatorController(IConfiguration configuration)
        {
            _configuration = configuration;
            apiURL = new Uri(_configuration.GetSection("URLs").GetValue<string>("ApiBaseURL"));
            client = new HttpClient() { BaseAddress=apiURL };
        }

        public ActionResult ShowAllAirlines()
        {
            List<Airline>? airlines = new List<Airline>();
            HttpResponseMessage response = client.GetAsync(client.BaseAddress + "api/Airlines/ShowAllAirlines").Result;
            if (response.IsSuccessStatusCode)
            {
                string data = response.Content.ReadAsStringAsync().Result;
                airlines = JsonConvert.DeserializeObject<List<Airline>>(data);
                 if(airlines != null)
                {
                    return View(airlines.OrderBy(orderBy => orderBy.Name));
                }
            }
            return View(airlines);
        }

        public ActionResult CreateNewAirline()
        {
            return View();
        }

        [HttpPost]
        public ActionResult CreateOrUpdateAirline(Airline airline)
        {
            string data = JsonConvert.SerializeObject(airline);
            StringContent stringContent = new StringContent(data, Encoding.UTF8, "application/json");

            if (airline.Id == 0)
            {
                HttpResponseMessage response = client.PostAsync(client.BaseAddress + "api/Airlines/AddOneAirline", stringContent).Result;
                if (response.IsSuccessStatusCode)
                {
                    return RedirectToAction("ShowAllAirlines");
                }
                return View("CreateNewAirline", airline);
            }
            else
            {
                HttpResponseMessage response = client.PutAsync(client.BaseAddress + $"api/Airlines/UpdateOneAirline?airlineId={airline.Id}", stringContent).Result;
                if (response.IsSuccessStatusCode)
                {
                    return RedirectToAction("ShowAllAirlines");
                }
                return View("CreateNewAirline", airline);
            }
        }

        public ActionResult RemoveAirline(int airlineId)
        {
            HttpResponseMessage response = client.DeleteAsync(client.BaseAddress + $"api/Airlines/DeleteOneAirline?airlineId={airlineId}").Result;
            if (response.IsSuccessStatusCode)
            {
                return RedirectToAction("ShowAllAirlines");
            }
            return BadRequest("Something went Wrong");
        }

        public ActionResult UpdateAirline(Airline airline)
        {
            return View("CreateNewAirline", airline);
        }
    }
}
