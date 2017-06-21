using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;


namespace AppBackToReality.Models
{
    
    public class CartItem
    {
        [Key]
        public string ItemId { get; set; }
        public string CartId { get; set; }
        public System.DateTime DateCreated { get; set; }
        public int ScreenId { get; set; }
        public virtual Screen Screen { get; set; }
    }

}