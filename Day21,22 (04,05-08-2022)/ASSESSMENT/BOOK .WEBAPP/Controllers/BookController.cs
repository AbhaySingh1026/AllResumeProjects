using BOOK_.WEBAPP.Models;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using System.Text;

namespace BOOK_.WEBAPP.Controllers
{
    public class BookController : Controller
    {
        Uri baseAddress = new Uri("https://localhost:44317/api");
        HttpClient client;
        IWebHostEnvironment _webHostEnvironment;
        public BookController(IWebHostEnvironment webHostEnvironment)
        {
            client = new HttpClient();
            client.BaseAddress = baseAddress;
            _webHostEnvironment = webHostEnvironment;
        }

        public IActionResult Index()
        {
            List<Book> books = new List<Book>();
            HttpResponseMessage response = client.GetAsync(client.BaseAddress + "/book").Result;
            if (response.IsSuccessStatusCode)
            {
                string data = response.Content.ReadAsStringAsync().Result;
                books = JsonConvert.DeserializeObject<List<Book>>(data);
            }
            return View(books);
        }

        public ActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public async Task<ActionResult> CreateOrUpdate(Book book)
        {
            if(book.Image != null)
            {
                string folder = "images/";
                folder += Guid.NewGuid().ToString() + "_" + book.Image.FileName;
                string fullPath = Path.Combine(_webHostEnvironment.WebRootPath, folder);
                await book.Image.CopyToAsync(new FileStream(fullPath, FileMode.Create));
                book.ImagePath = folder;
            }

            string data = JsonConvert.SerializeObject(book);
            StringContent stringContent = new StringContent(data, Encoding.UTF8, "application/json");

            if (book.Id == 0)
            {
                HttpResponseMessage response = client.PostAsync(client.BaseAddress + "/book", stringContent).Result;
                if (response.IsSuccessStatusCode)
                {
                    return RedirectToAction("Index");
                }
                book.Name = "Book with this name already exists.";
                return View("Create",book);
            }
            else
            {
                HttpResponseMessage response = client.PutAsync(client.BaseAddress + $"/book?bookId={book.Id}", stringContent).Result;
                if (response.IsSuccessStatusCode)
                {
                    return RedirectToAction("Index");
                }
                book.Name = "Book with this name already exists.";
                return View("Create", book);
            }
        }

        public ActionResult Delete(int bookId)
        {
            HttpResponseMessage response = client.DeleteAsync(client.BaseAddress + $"/book?bookId={bookId}").Result;
            if (response.IsSuccessStatusCode)
            {
                return RedirectToAction("Index");
            }
            return BadRequest("Something went Wrong");
        }

        public ActionResult Edit(Book book)
        {
            return View("Create", book);
        }

        public ActionResult Search(string searchString)
        {
            List<Book> books = new List<Book>();
            HttpResponseMessage response = client.GetAsync(client.BaseAddress + "/book/" + searchString).Result;
            if (response.IsSuccessStatusCode)
            {
                string data = response.Content.ReadAsStringAsync().Result;
                books = JsonConvert.DeserializeObject<List<Book>>(data);
            }
            return View("Index", books);
        }

        public ActionResult Details(Book book)
        {
            return View(book);
        }

        public ActionResult Cart(int bookId)
        {
            Book book = new Book();
            HttpResponseMessage response = client.GetAsync(client.BaseAddress + "/book/GetOneBook/" + bookId).Result;
            if (response.IsSuccessStatusCode)
            {
                string data = response.Content.ReadAsStringAsync().Result;
                book = JsonConvert.DeserializeObject<Book>(data);
            }
            return View(book);
        }
    }
}
