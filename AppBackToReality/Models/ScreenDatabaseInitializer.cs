using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace AppBackToReality.Models
{
    public class ScreenDatabaseInitializer : DropCreateDatabaseAlways<ScreenContext>
    {
        protected override void Seed(ScreenContext context)
        {
            GetCategories().ForEach(c => context.Categories.Add(c));
            GetScreens().ForEach(p => context.Screens.Add(p));
            
        }

        private static List<Category> GetCategories()
        {
            var categories = new List<Category> {
             new Category
             {
             CategoryID = 1,
            CategoryName = "Plain Text Screen"
             },
             new Category
             {
             CategoryID = 2,
            CategoryName = "Image Screen"
             },
             new Category
             {
             CategoryID = 3,
             CategoryName = "Button Screen"
             },
             new Category
             {
             CategoryID = 4,
            CategoryName = "Login"
             },
             new Category
             {
             CategoryID = 5,
             CategoryName = "Maps"
             },
         };
            return categories;
        }
        private static List<Screen> GetScreens()
        {
            var Screens = new List<Screen> {
             new Screen
             {
             ScreenID = 1,
            ScreenName = "Only text",
            Description = "This is a simple screen that displays text",
             ImagePath="",
            UnitPrice = 99999999,
            CategoryID = 1
             },
             
             };
            return Screens;
        }
    }
}