using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCPracWithAPI.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult AboutUser()
        {
           

            return View();
        }

        public ActionResult IssuedBooks()
        {
           

            return View();
        }
    }
}