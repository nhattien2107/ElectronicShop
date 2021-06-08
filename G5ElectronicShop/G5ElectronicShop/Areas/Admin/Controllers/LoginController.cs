using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using G5ElectronicShop.Models;
using System.Web.Security;

namespace G5ElectronicShop.Areas.Admin.Controllers
{
    public class LoginController : Controller
    {
        #region Variables

        public OnlineShopDBEntities db = new OnlineShopDBEntities();

        #endregion

        #region Login Function

        // GET: Admin/Login
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Index(string username, string password)
        {
            password = Encode.EncodeMD5(password);
            var result = db.Staffs.Where(p => p.Username.Equals(username) && p.Password.Equals(password)).FirstOrDefault();
            if (result != null)
            {
                Session["Admin"] = username;
                return RedirectToAction("Index", "HomeAdmin");
            }
            else
            {
                TempData["msg_login"] = "Login Failed!";
                return View();
            }                     
        }

        #endregion

        #region Logout Function

        public ActionResult LogOut()
        {
            FormsAuthentication.SignOut();
            Session.Abandon(); // it will clear the session at the end of request
            return RedirectToAction("Index", "Login");
        }

        #endregion
    }
}