using G5ElectronicShop.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace G5ElectronicShop.Areas.Admin.Controllers
{
    public class TypeProductController : Controller
    {
        #region Variables

        public OnlineShopDBEntities db = new OnlineShopDBEntities();

        #endregion

        // GET: Admin/TypeProduct

        #region Index Page

        public ActionResult Index(string searchString)
        {
            if (Session["admin"] == null)
                RedirectToAction("Index", "Login");
            var typeproducts = from s in db.TypeProducts select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                typeproducts = typeproducts.Where(s => s.typeID.Contains(searchString) || s.typeName.Contains(searchString));
            }
            return View(typeproducts.ToList());              
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
        public ActionResult Create(TypeProduct typeProduct)
        {
            if (Session["admin"] == null)
                RedirectToAction("Index", "Login");

                if (ModelState.IsValid)
                {
                string filename = Path.GetFileName(typeProduct.imageUpload.FileName);               
                string path = Path.Combine(Server.MapPath("~/Content/images/typeproduct"), filename);
                typeProduct.images = filename;               
                typeProduct.imageUpload.SaveAs(path);                
                    db.TypeProducts.Add(typeProduct);
                    db.SaveChanges();
                }

            return RedirectToAction("Index", "TypeProduct");
        }

        #endregion

        #region Edit Page

        public ActionResult Edit(string id)
        {
            if (Session["admin"] == null)
                RedirectToAction("Index", "Login");
            var model = db.TypeProducts.Find(id);
            Session["images"] = model.images;
            return View(model);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "TypeID,TypeName")] TypeProduct typeProduct, HttpPostedFileBase imageUpload)
        {
            if (Session["admin"] == null)
            {
                return RedirectToAction("Index", "Login");
            }
            if (ModelState.IsValid)
            {
                if (imageUpload != null)
                {
                    string filename = Path.GetFileName(imageUpload.FileName);
                    string path = Path.Combine(Server.MapPath("~/Content/images/typeproduct"), filename);
                    string oldImage = Request.MapPath(Session["images"].ToString());
                    typeProduct.images = filename;
                    imageUpload.SaveAs(path);
                    db.Entry(typeProduct).State = EntityState.Modified;
                    

                    if (db.SaveChanges() > 0)
                    {
                        imageUpload.SaveAs(path);
                        if (System.IO.File.Exists(oldImage))
                        {
                            System.IO.File.Delete(oldImage);
                        }
                        TempData["msg"] = "Data Updated";
                        return RedirectToAction("Index", "TypeProduct");
                    }                    
                }
                else 
                {
                    typeProduct.images = Session["images"].ToString();
                    db.Entry(typeProduct).State = EntityState.Modified;
                    if (db.SaveChanges() > 0)
                    {
                        TempData["msg"] = "Data Updated";
                        return RedirectToAction("Index", "TypeProduct");
                    }
                }                
            }
            return View();
        }

        #endregion

        #region Delete Page 

        public ActionResult Delete(string id)
        {
            if (Session["admin"] == null)
                RedirectToAction("Index", "Login");
            var model = db.TypeProducts.Find(id);
            return View(model);
        }

        [HttpPost, ActionName("Delete")]
        public ActionResult ConfirmDelete(string id)
        {
            if (Session["admin"] == null)
            {
                return RedirectToAction("Index", "Login");
            }
            TypeProduct item = db.TypeProducts.Find(id);
            db.TypeProducts.Remove(item);
            db.SaveChanges();
            return RedirectToAction("Index", "TypeProduct");
        }

        #endregion

        #region Detail page

        public ActionResult Details(string id)
        {
            if (Session["admin"] == null)
                RedirectToAction("Index", "Login");
            var model = db.TypeProducts.Find(id);
            return View(model);
        }

        #endregion
    }
}