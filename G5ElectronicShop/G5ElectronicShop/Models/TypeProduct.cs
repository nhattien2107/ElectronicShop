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

    public partial class TypeProduct
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TypeProduct()
        {
            this.Products = new HashSet<Product>();
        }
    
        public string typeID { get; set; }
        public string typeName { get; set; }
        public string images { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Product> Products { get; set; }
        public HttpPostedFileBase imageUpload { get; set; }
    }
}
