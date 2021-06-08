//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace G5ElectronicShop.Models
{
    using System;
    using System.Collections.Generic;
    using System.Web;

    public partial class Product
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Product()
        {
            this.OrderDetails = new HashSet<OrderDetail>();
        }
    
        public int ProductID { get; set; }
        public string ProductName { get; set; }
        public string Description { get; set; }
        public Nullable<System.DateTime> DateOfManufacture { get; set; }
        public string TypeID { get; set; }
        public string ManufacturerID { get; set; }
        public Nullable<decimal> Price { get; set; }
        public string Images { get; set; }
    
        public virtual Manufacturer Manufacturer { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<OrderDetail> OrderDetails { get; set; }
        public virtual TypeProduct TypeProduct { get; set; }
        public HttpPostedFileBase ImageUpload { get; set; }
        public string TypeSelected { get; set; }
        public string ManuSelected { get; set; }
    }
}
