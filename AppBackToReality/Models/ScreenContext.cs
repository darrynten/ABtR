using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace AppBackToReality.Models
{
    public class ScreenContext : DbContext
    {
        public ScreenContext() : base("db") //this might be wrong
        {
        }
        public DbSet<Category> Categories { get; set; }
        public DbSet<Screen> Screens { get; set; }
        public DbSet<CartItem> ShoppingCartItems { get; set; }


    }
}