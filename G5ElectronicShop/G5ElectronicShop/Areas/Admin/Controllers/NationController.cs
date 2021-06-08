using G5ElectronicShop.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace G5ElectronicShop.Areas.Admin.Controllers
{
    public class NationController : Controller
    {
        #region Variables

        public OnlineShopDBEntities db = new OnlineShopDBEntities();

        #endregion

        // GET: Admin/Nation

        #region Index Page

        public ActionResult Index(string searchString)
        {
            if (Session["admin"] == null)
                RedirectToAction("Index", "Login");
            var nations = from s in db.Nations select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                nations = nations.Where(s => s.nationID.Contains(searchString) || s.nationName.Contains(searchString));
            }
            return View(nations.ToList());
        }

        #endregion

        #region Create Page

        public ActionResult Create()
        {
            if (Session["admin"] == null)
                RedirectToAction("Index", "Login");
            return View();
        }
        [HttpPost]
        public ActionResult Create(Nation nation)
        {
            if (Session["admin"] == null)
                RedirectToAction("Index", "Login");
            try
            {
                if (ModelState.IsValid)
                {
                    db.Nations.Add(nation);
                    db.SaveChanges();
                }

            }
            catch (Exception e) { }

            return RedirectToAction("Index", "Nation");
        }

        #endregion

        #region Edit Page

        public ActionResult Edit(string id)
        {
            if (Session["admin"] == null)
                RedirectToAction("Index", "Login");
            var model = db.Nations.Find(id);
            return View(model);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "NationID,NationName")] Nation nation)
        {
            if (Session["admin"] == null)
            {
                return RedirectToAction("Index", "Login");
            }
            if (ModelState.IsValid)
            {
                db.Entry(nation).State = EntityState.Modified;
                db.SaveChanges();
            }
            return RedirectToAction("Index", "Nation");
        }

        #endregion

        #region Delete Page 

        public ActionResult Delete(string id)
        {
            if (Session["admin"] == null)
                RedirectToAction("Index", "Login");
            var model = db.Nations.Find(id);
            return View(model);
        }

        [HttpPost, ActionName("Delete")]
        public ActionResult ConfirmDelete(string id)
        {
            if (Session["admin"] == null)
            {
                return RedirectToAction("Index", "Login");
            }
            Nation item = db.Nations.Find(id);
            db.Nations.Remove(item);
            db.SaveChanges();
            return RedirectToAction("Index", "Nation");
        }

        #endregion

        #region Detail page

        public ActionResult Details(string id)
        {
            if (Session["admin"] == null)
                RedirectToAction("Index", "Login");
            var model = db.Nations.Find(id);
            return View(model);
        }

        #endregion
    }
}