using G5ElectronicShop.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace G5ElectronicShop.Areas.Admin.Controllers
{
    public class OrderProductController : Controller
    {
        public OnlineShopDBEntities db = new OnlineShopDBEntities();
        // GET: Admin/OrderProduct
        public ActionResult Index()
        {
            if (Session["admin"] == null)
            {
                return RedirectToAction("Index", "Login");
            }
            var models = db.Orders.ToList();
            return View(models);
        }
        public ActionResult Edit(int id)
        {
            if (Session["admin"] == null)
            {
                return RedirectToAction("Index", "Login");
            }
            var model = db.Orders.Where(p => p.OrderID == id).FirstOrDefault();
            model.StaffID = (int)Session["admin"];
            return View(model);
        }
        [HttpPost]
        public ActionResult Edit(Order orderpro)
        {
            if (Session["admin"] == null)
            {
                return RedirectToAction("Index", "Product");
            }
            if (ModelState.IsValid)
            {
                db.Entry(orderpro).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index", "OrderProduct");
            }
            return View(orderpro);
        }
        public ActionResult DetailOrder(int id)
        {
            if (Session["admin"] == null)
            {
                return RedirectToAction("Index", "Login");
            }
            var models = db.Orders.Where(p => p.OrderID == id).ToList();
            return View(models);
        }
        public ActionResult Delete(int id)
        {
            if (Session["admin"] == null)
            {
                return RedirectToAction("Index", "Login");
            }
            var model = db.Orders.Find(id);
            return View(model);
        }
        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            if (Session["admin"] == null)
            {
                return RedirectToAction("Index", "Login");
            }
            Order item = db.Orders.Find(id);
            db.Orders.Remove(item);
            db.SaveChanges();
            return RedirectToAction("Index", "OrderProduct");
        }
    }
}