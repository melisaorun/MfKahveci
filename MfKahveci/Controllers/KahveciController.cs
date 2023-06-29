using MfKahveci.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MfKahveci.Models;
using MfKahveci.Controllers;

namespace MfKahveci.Controllers
{
    public class KahveciController : Controller
    {
        // GET: Kahveci
        Model1Container1 db = new Model1Container1();
        public ActionResult Index()
        {
            return View(db.Kahvecis.ToList());
        }
        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Create(Kahveci kahveci)
        {
            db.Kahvecis.Add(kahveci);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        [HttpGet]
        public ActionResult Edit(int id)
        {
            var düzenle = db.Kahvecis.Where(x => x.UrunNo == id).FirstOrDefault();
            return View(düzenle);
        }
        [HttpPost]
        public ActionResult Edit(int id, Kahveci kahveci)
        {
            db.Entry(kahveci).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        [HttpGet]
        public ActionResult Delete(int id)
        {
            var sil = db.Kahvecis.Where(x => x.UrunNo == id).FirstOrDefault();
            return View(sil);
        }
        [HttpPost]
        public ActionResult Delete(int id, Kahveci kahveci)
        {
            kahveci = db.Kahvecis.Where(x => x.UrunNo == id).FirstOrDefault();
            db.Kahvecis.Remove(kahveci);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

    }
}