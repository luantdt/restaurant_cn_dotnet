﻿using PJ_.Net_Restaurant.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace PJ_.Net_Restaurant.Controllers
{
    public class FoodMenuController : Controller
    {
        // GET: FoodMenu
        RestaurantEntities db = new RestaurantEntities();
        public ActionResult Index(string meta)
        {
            var v = from t in db.FoodStyle
                    where t.meta == meta
                    select t;
            return View(v.FirstOrDefault());
        }
        public ActionResult getFoods(string name)
        {
            ViewBag.meta = "Food-Menu";
            var v = from t in db.Food
                    where t.footstyle == name && t.hide == true
                    orderby t.order ascending
                    select t;

            return PartialView(v.ToList());
        }
    }
}