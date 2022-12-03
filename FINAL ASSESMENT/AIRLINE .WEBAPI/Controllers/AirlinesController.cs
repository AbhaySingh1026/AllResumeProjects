using AIRLINE_.EF;
using AIRLINE_.EF.ApiModels;
using AIRLINE_.WEBAPI.ViewModels;
using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace AIRLINE_.WEBAPI.Controllers
{
    [Route("api/[controller]/[action]")]
    [ApiController]
    public class AirlinesController : ControllerBase
    {
        private readonly AirlineDbContext _context;
        private readonly IMapper _mapper;
        public AirlinesController(AirlineDbContext context, IMapper mapper)
        {
            _context = context;
            _mapper = mapper;
        }

        [HttpGet]
        public async Task<ActionResult<IEnumerable<AirlineApiModel>>> ShowAllAirlines()
        {
            if (_context.Airlines == null)
            {
                return NotFound("Table doesn't exists");
            }
            return await _context.Airlines.ToListAsync();
        }

        [HttpPost]
        public async Task<IActionResult> AddOneAirline(AirlineViewModel airline)
        {
            if (airline == null)
            {
                return BadRequest("Airline object can't be null");
            }
            if (_context.Airlines == null)
            {
                return NotFound("Table doesn't exists");
            }

            var convertedAirline = _mapper.Map<AirlineApiModel>(airline);

            var x = _context.Airlines.Add(convertedAirline);
            await _context.SaveChangesAsync();
            return Ok("Added Successfully");
        }

        [HttpPut]
        public async Task<IActionResult> UpdateOneAirline(int airlineId, AirlineViewModel airline)
        {
            if (airline == null)
            {
                return BadRequest("Airline object can't be null");
            }
            if (_context.Airlines == null)
            {
                return NotFound("Table doesn't exists");
            }
            var airlineToUpdate = await _context.Airlines.FindAsync(airlineId);
            if (airlineToUpdate == null)
            {
                return NotFound("Airline with this airline doesn't exists");
            }
            airlineToUpdate.Name = airline.Name;
            airlineToUpdate.FromCity = airline.FromCity;
            airlineToUpdate.ToCity = airline.ToCity;
            airlineToUpdate.Fare = airline.Fare;

            _context.Airlines.Update(airlineToUpdate);
            await _context.SaveChangesAsync();
            return Ok("Updated Successfully");
        }

        [HttpDelete]
        public async Task<IActionResult> DeleteOneAirline(int airlineId)
        {
            if (_context.Airlines == null)
            {
                return NotFound("Table doesn't exists");
            }
            var airlineToDelete = await _context.Airlines.FindAsync(airlineId);
            if (airlineToDelete == null)
            {
                return NotFound("Airline with this airlineId doesn't exists");
            }
            _context.Airlines.Remove(airlineToDelete);
            await _context.SaveChangesAsync();
            return Ok("Deleted Successfully");
        }

        [HttpPost]
        public async Task<IActionResult> CheckAirlineNameAvailability(string airlineName)
        {
            if (string.IsNullOrEmpty(airlineName)) return BadRequest("Input can't be null");
            else
            {
                if(_context.Airlines != null)
                {
                    var recordWithRecievedName = await _context.Airlines.Where(airline => airline.Name == airlineName).FirstOrDefaultAsync();
                    if (recordWithRecievedName == null)
                    {
                        return Ok(1);
                    }
                    else
                    {
                        return Ok(0);
                    }
                }
                else
                {
                    return NotFound("Table doesn't exists");
                }
            }
        }
    }
}
