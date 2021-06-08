using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using G5ElectronicShop.Models;
using PagedList;
using System.Web.Security;

namespace G5ElectronicShop.Controllers
{
    public class HomeController : Controller
    {
        #region Variables

        public OnlineShopDBEntities db = new OnlineShopDBEntities();
        public IEnumerable<Product> AllListPaging(int page, int pageSize)
        {
            return db.Products.OrderBy(x => x.DateOfManufacture).ToPagedList(page, pageSize);
        }
        public IEnumerable<Product> AllListPagingByType(int page, int pageSize, string typeID)
        {
            return db.Products.OrderBy(x => x.DateOfManufacture).Where(x => x.TypeID.Equals(typeID)).ToPagedList(page, pageSize);
        }

        #endregion

        #region Index

        public ActionResult Index(string typeID, int page = 1, int pageSize = 15)
        {
            ViewBag.menu = db.TypeProducts.ToList();
            if (typeID == null)
            {
                var products = AllListPaging(page, pageSize);
                ViewBag.typeID = null;
                return View(products);
            }
            else
            {
                var products = AllListPagingByType(page, pageSize, typeID);
                ViewBag.typeID = typeID;
                return View(products);
            }
        }
       
        public ActionResult Details(int id)
        {
            ViewBag.menu = db.TypeProducts.ToList();
            Product product = db.Products.Find(id);
            return View(product);
        }

        #endregion

        #region About

        public ActionResult About()
        {
            ViewBag.menu = db.TypeProducts.ToList();
            return View();
        }

        #endregion

        #region Contact

        public ActionResult Contact()
        {
            ViewBag.menu = db.TypeProducts.ToList();
            ViewBag.Message = "Your contact page.";
            return View();
        }

        #endregion

        #region Log In

        public ActionResult LogIn()
        {
            ViewBag.menu = db.TypeProducts.ToList();
            return View();
        }
        [HttpPost]
        public ActionResult Login(string username, string password)
        {
            password = Encode.EncodeMD5(password);
            Customer rs = db.Customers.Where(p=>p.UserName.Equals(username)&&p.PassWord.Equals(password)).FirstOrDefault();
            if (rs != null)
            {
                Session["customer"] = rs.CustomerID;
                var cus = db.Customers.Find(rs.CustomerID);
                ViewBag.CustomerName = cus.CustomerName.ToString();
                return RedirectToAction("Index","Home");
            }
            else
            {
                return RedirectToAction("LogIn", "Home");
            }
        }

        #endregion

        #region Logout Function

        public ActionResult LogOut()
        {
            FormsAuthentication.SignOut();
            Session.Abandon(); // it will clear the session at the end of request
            return RedirectToAction("Index", "Home");
        }

        #endregion

        #region Purchase History and Detail

        public ActionResult PurchaseHistory()
        {
            ViewBag.menu = db.TypeProducts.ToList();
            if (Session["customer"] == null)
            {
                return RedirectToAction("LogIn", "Home");
            }
            int customerid = (int)Session["customer"];
            var models = db.Orders.Where(p => p.CustomerID == customerid).ToList();
            return View(models);
        }
        public ActionResult DetailOrder(int id)
        {
            ViewBag.menu = db.TypeProducts.ToList();
            if (Session["customer"] == null)
            {
                return RedirectToAction("LogIn", "Home");
            }
            var models = db.OrderDetails.Where(p => p.OrderID == id).ToList();
            return View(models);
        }

        #endregion
    }
}