//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PJ_.Net_Restaurant.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class ShopCart
    {
        public int id { get; set; }
        public string foodname { get; set; }
        public Nullable<int> quantityfood { get; set; }
        public Nullable<double> foodprice { get; set; }
        public Nullable<int> quantitytable { get; set; }
        public Nullable<double> tableprice { get; set; }
        public string meta { get; set; }
        public Nullable<bool> hide { get; set; }
        public Nullable<int> order { get; set; }
        public Nullable<System.DateTime> datebegin { get; set; }
    }
}
