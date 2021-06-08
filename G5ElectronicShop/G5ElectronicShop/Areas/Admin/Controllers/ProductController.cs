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
    public class ProductController : Controller
    {
        #region Variables

        public OnlineShopDBEntities db = new OnlineShopDBEntities();

        #endregion

        #region Index Page

        // GET: Admin/Product
        public ActionResult Index(string sortOrder, string searchString)
        {
            if (Session["admin"] == null)
                RedirectToAction("Index", "Login");

                ViewBag.IDSortParm = String.IsNullOrEmpty(sortOrder) ? "id_desc" : "";
                ViewBag.PNameSortParm = String.IsNullOrEmpty(sortOrder) ? "pname_desc" : "Pname";
                ViewBag.PriceSortParm = sortOrder == "Price" ? "price_desc" : "Price";
                ViewBag.DateSortParm = sortOrder == "Date" ? "date_desc" : "Date";

                var products = from s in db.Products select s;
                switch (sortOrder)
                {
                    case "pname_desc":
                        products = products.OrderByDescending(s => s.ProductName);
                        break;
                    case "id_desc":
                        products = products.OrderByDescending(s => s.ProductID);
                        break;
                    case "price_desc":
                        products = products.OrderByDescending(s => s.Price);
                        break;
                    case "date_desc":
                        products = products.OrderByDescending(s => s.DateOfManufacture);
                        break;
                    case "Pname":
                        products = products.OrderBy(s => s.ProductName);
                        break;
                    case "Price":
                        products = products.OrderBy(s => s.Price);
                        break;
                    case "Date":
                        products = products.OrderBy(s => s.DateOfManufacture);
                        break;
                    default:
                        products = products.OrderBy(s => s.ProductID);
                        break;
                }

                if (!String.IsNullOrEmpty(searchString))
                {
                    products = products.Where(s => s.ProductID.ToString().Contains(searchString) || s.ProductName.Contains(searchString));
                }
            return View(products.ToList());           
        }

        #endregion

        #region Detail Page

        public ActionResult Details(int id)
        {
            if (Session["admin"] == null)
                RedirectToAction("Index", "Login");
            var model = db.Products.Find(id);
            return View(model);
        }

        #endregion

        #region Create Page

        public ActionResult Create()
        {
            if (Session["admin"] == null)
                RedirectToAction("Index", "Login");
            ViewBag.typename = new SelectList(db.TypeProducts.ToList(), "typeID", "typeName");
            ViewBag.manuname = new SelectList(db.Manufacturers.ToList(), "ManufacturerID", "ManufacturerName");
            return View();
        }

        [ValidateInput(false)]
        [HttpPost]
        public ActionResult Create(Product product)
        {
            if (Session["admin"] == null)
                RedirectToAction("Index", "Login");

            if (ModelState.IsValid)
            {
                if(product.ImageUpload != null && product.ImageUpload.ContentLength > 0)
                {
                    string filename = Path.GetFileName(product.ImageUpload.FileName);
                    string path = Path.Combine(Server.MapPath("~/Content/images/product"), filename);
                    product.Images = filename;
                    product.ImageUpload.SaveAs(path);
                }
                product.Description = product.Description;            
                db.Products.Add(product);
                db.SaveChanges();
            }

            return RedirectToAction("Index", "Product");
        }

        #endregion

        #region Delete Page 

        public ActionResult Delete(int id)
        {
            if (Session["admin"] == null)
                RedirectToAction("Index", "Login");
            var model = db.Products.Find(id);
            return View(model);
        }

        [HttpPost, ActionName("Delete")]
        public ActionResult ConfirmDelete(int id)
        {
            if (Session["admin"] == null)
            {
                return RedirectToAction("Index", "Login");
            }
            Product item = db.Products.Find(id);
            db.Products.Remove(item);
            db.SaveChanges();
            return RedirectToAction("Index", "Product");
        }

        #endregion

        #region Edit Page

        public ActionResult Edit(int id)
        {
            if (Session["admin"] == null)
                RedirectToAction("Index", "Login");
            var model = db.Products.Find(id);
            ViewBag.typename = new SelectList(db.TypeProducts.ToList(), "typeID", "typeName");
            ViewBag.manuname = new SelectList(db.Manufacturers.ToList(), "ManufacturerID", "ManufacturerName");
            model.TypeSelected = model.TypeID;
            model.ManuSelected = model.ManufacturerID;
            Session["Images"] = model.Images;
            return View(model);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ProductID,ProductName")] Product product, HttpPostedFileBase ImageUpload, string TypeSelected, string ManuSelected)
        {
            if (Session["admin"] == null)
            {
                return RedirectToAction("Index", "Login");
            }
            if (ModelState.IsValid)
            {
                if (ImageUpload != null && ImageUpload.ContentLength > 0)
                {
                    string filename = Path.GetFileName(ImageUpload.FileName);
                    string path = Path.Combine(Server.MapPath("~/Content/images/product"), filename);
                    string oldImage = Request.MapPath(Session["Images"].ToString());
                    product.Images = filename;
                    ImageUpload.SaveAs(path);
                    product.TypeID = TypeSelected;
                    product.ManufacturerID = ManuSelected;
                    product.Description = product.Description;
                    db.Entry(product).State = EntityState.Modified;


                    if (db.SaveChanges() > 0)
                    {
                        ImageUpload.SaveAs(path);
                        if (System.IO.File.Exists(oldImage))
                        {
                            System.IO.File.Delete(oldImage);
                        }
                        TempData["msg"] = "Data Updated";
                        return RedirectToAction("Index", "Product");
                    }
                }
                else
                {
                    product.Images = Session["Images"].ToString();
                    product.TypeID = TypeSelected;
                    product.ManufacturerID = ManuSelected;
                    product.Description = product.Description;
                    db.Entry(product).State = EntityState.Modified;
                    if (db.SaveChanges() > 0)
                    {
                        TempData["msg"] = "Data Updated";
                        return RedirectToAction("Index", "Product");
                    }
                }
            }
            return View();
        }

        #endregion
    }
}