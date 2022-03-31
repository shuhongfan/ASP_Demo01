using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using proj11_2.Models;

namespace proj11_2.Controllers
{
    public class ProductController : Controller
    {
        private testEntities te = new testEntities();
        public ActionResult Index()
        {
            return View(te.product.ToList());
        } 
	}
}