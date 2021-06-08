using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using G5ElectronicShop.Models;

namespace G5ElectronicShop.Areas.Admin.Controllers
{
    public class HomeAdminController : Controller
    {
        public OnlineShopDBEntities db = new OnlineShopDBEntities();
        // GET: Admin/AdminHome
        public ActionResult Index()
        {
            if (Session["Admin"] != null)
            {
                ViewBag.ProductQuantity = db.Products.Count();
                return View();
            }
            else
            {
                return RedirectToAction("Index", "Login");
            }
        }
    }
}