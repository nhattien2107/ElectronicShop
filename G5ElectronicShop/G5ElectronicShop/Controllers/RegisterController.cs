using G5ElectronicShop.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace G5ElectronicShop.Controllers
{
    public class RegisterController : Controller
    {
        #region Variables

        public OnlineShopDBEntities db = new OnlineShopDBEntities();

        #endregion

        #region Register

        public ActionResult Register()
        {
            ViewBag.menu = db.TypeProducts.ToList();
            return View();
        }
        [HttpPost]
        public ActionResult Register(Customer customer)
        {
            //Encode
            customer.PassWord = Encode.EncodeMD5(customer.PassWord);
            customer.CustomerID = db.Customers.OrderByDescending(p => p.CustomerID).First().CustomerID + 1;
            if (ModelState.IsValid)
            {
                db.Customers.Add(customer);
                db.SaveChanges();
                return RedirectToAction("Index","Home");
            }
            return View(customer);
        }

        #endregion
    }
}