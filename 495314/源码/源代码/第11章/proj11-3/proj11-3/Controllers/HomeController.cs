using System.Linq;
using System.Web.Mvc;
using proj11_3.Models;

namespace proj11_3.Controllers
{
    public class HomeController : Controller
    {
        private BookDBContext db = new BookDBContext();
        public ActionResult Index(string bookname)
        {
            var blist = db.books.Where(b => b.bookName.Contains(bookname));
            return View(blist);
        }     
    }
}