using G5ElectronicShop.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace G5ElectronicShop.Areas.Admin.Controllers
{
    public class ManufacturerController : Controller
    {
        #region Variables

        public OnlineShopDBEntities db = new OnlineShopDBEntities();

        #endregion

        // GET: Admin/Manufacturer

        #region Index Page

        public ActionResult Index(string searchString)
        {
            if (Session["admin"] == null)
                RedirectToAction("Index", "Login");
            var manu = from s in db.Manufacturers select s;
            manu = manu.OrderBy(s => s.manufacturerID); 
            if (!String.IsNullOrEmpty(searchString))
            {
                manu = manu.Where(s => s.manufacturerName.Contains(searchString) || s.Nation.nationName.Contains(searchString));
            }
            return View(manu.ToList());
        }

        #endregion

        #region Create Page

        public ActionResult Create()
        {
            if (Session["admin"] == null)
                RedirectToAction("Index", "Login");
            ViewBag.nations = new SelectList(db.Nations.ToList(), "nationID", "nationName");
            return View();
        }
        [HttpPost]
        public ActionResult Create(Manufacturer manu)
        {
            if (Session["admin"] == null)
                RedirectToAction("Index", "Login");
            try
            {
                if (ModelState.IsValid)
                {
                    db.Manufacturers.Add(manu);
                    db.SaveChanges();
                }
            }
            catch (Exception e) { }

            return RedirectToAction("Index", "Manufacturer");
        }

        #endregion

        #region Edit Page

        public ActionResult Edit(string id)
        {
            if (Session["admin"] == null)
                RedirectToAction("Index", "Login");
            var model = db.Manufacturers.Find(id);
            ViewBag.nations = new SelectList(db.Nations.ToList(), "nationID", "nationName");
            model.Selected = model.nationID;
            return View(model);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ManufacturerID,ManufacturerName")] Manufacturer manu, string Selected)
        {
            if (Session["admin"] == null)
                return RedirectToAction("Index", "Login");

            if (ModelState.IsValid)
            {
                manu.nationID = Selected;
                db.Entry(manu).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index", "Manufacturer");
            }
            return View();
        }

        #endregion

        #region Delete Page 

        public ActionResult Delete(string id)
        {
            if (Session["admin"] == null)
                RedirectToAction("Index", "Login");
            var model = db.Manufacturers.Find(id);
            return View(model);
        }

        [HttpPost, ActionName("Delete")]
        public ActionResult ConfirmDelete(string id)
        {
            if (Session["admin"] == null)
            {
                return RedirectToAction("Index", "Login");
            }
            Manufacturer item = db.Manufacturers.Find(id);
            db.Manufacturers.Remove(item);
            db.SaveChanges();
            return RedirectToAction("Index", "Manufacturer");
        }

        #endregion

        #region Detail page

        public ActionResult Details(string id)
        {
            if (Session["admin"] == null)
                RedirectToAction("Index", "Login");
            var model = db.Manufacturers.Find(id);
            return View(model);
        }

        #endregion
    }
}