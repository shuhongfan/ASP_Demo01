using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace proj11_1.Controllers
{
    public class FirstController : Controller
    {
        public string GetString()
        {
            return "你好！这是我的第一个ASP.NET MVC5 程序。";
        }
	}
}