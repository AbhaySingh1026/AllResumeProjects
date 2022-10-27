using AIRLINE_.WEBAPP.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using System.Text;

namespace AIRLINE_.WEBAPP.Controllers
{
    [Authorize(Roles = "operator")]
    public class OperatorController : Controller
    {
        Uri baseAddress = new Uri("https://localhost:7154/api");
        HttpClient client;
        public OperatorController()
        {
            client = new HttpClient();
            client.BaseAddress = baseAddress;
        }

        public ActionResult ShowAllAirlines()
        {
            List<Airline>? airlines = new List<Airline>();
            HttpResponseMessage response = client.GetAsync(client.BaseAddress + "/Airlines/ShowAllAirlines").Result;
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
                HttpResponseMessage response = client.PostAsync(client.BaseAddress + "/Airlines/AddOneAirline", stringContent).Result;
                if (response.IsSuccessStatusCode)
                {
                    return RedirectToAction("ShowAllAirlines");
                }
                return View("CreateNewAirline", airline);
            }
            else
            {
                HttpResponseMessage response = client.PutAsync(client.BaseAddress + $"/Airlines/UpdateOneAirline?airlineId={airline.Id}", stringContent).Result;
                if (response.IsSuccessStatusCode)
                {
                    return RedirectToAction("ShowAllAirlines");
                }
                return View("CreateNewAirline", airline);
            }
        }

        public ActionResult RemoveAirline(int airlineId)
        {
            HttpResponseMessage response = client.DeleteAsync(client.BaseAddress + $"/Airlines/DeleteOneAirline?airlineId={airlineId}").Result;
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
