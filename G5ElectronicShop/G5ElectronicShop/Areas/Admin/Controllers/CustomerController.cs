﻿using G5ElectronicShop.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace G5ElectronicShop.Areas.Admin.Controllers
{
    public class CustomerController : Controller
    {
        public OnlineShopDBEntities db = new OnlineShopDBEntities();

        public ActionResult Index()
        {
            if (Session["admin"] == null)
            {
                return RedirectToAction("Index", "Login");
            }
            var models = db.Customers.ToList();
            return View(models);
        }
        public ActionResult Create()
        {
            if (Session["admin"] == null)
            {
                return RedirectToAction("Index", "Login");
            }
            return View();
        }
        [HttpPost]
        public ActionResult Create(Customer customer)
        {
            if (Session["admin"] == null)
            {
                return RedirectToAction("Index", "Login");
            }
            customer.PassWord = Encode.EncodeMD5(customer.PassWord);
            if (ModelState.IsValid)
            {
                db.Customers.Add(customer);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(customer);
        }
        public ActionResult Edit(int id)
        {
            if (Session["admin"] == null)
            {
                return RedirectToAction("Index", "Login");
            }
            var model = db.Customers.Find(id);
            return View(model);
        }
        [HttpPost]
        public ActionResult Edit(Customer customer)
        {
            if (Session["admin"] == null)
            {
                return RedirectToAction("Index", "Login");
            }
            
            if (ModelState.IsValid)
            {
                customer.PassWord = Encode.EncodeMD5(customer.PassWord);
                db.Entry(customer).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(customer);
        }
        public ActionResult Delete(int id)
        {
            if (Session["admin"] == null)
            {
                return RedirectToAction("Index", "Login");
            }
            var model = db.Customers.Find(id);
            return View(model);
        }
        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            if (Session["admin"] == null)
            {
                return RedirectToAction("Index", "Login");
            }
            Customer customer = db.Customers.Find(id);
            db.Customers.Remove(customer);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult Details(int id)
        {
            if (Session["admin"] == null)
            {
                return RedirectToAction("Index", "Login");
            }
            var model = db.Customers.Find(id);
            return View(model);
        }
    }
}