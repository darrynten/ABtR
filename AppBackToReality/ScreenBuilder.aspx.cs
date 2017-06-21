using AppBackToReality.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppBackToReality.Logic;

namespace AppBackToReality
{
    public partial class ScreenBuilder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
           if(RadioButtonList1.SelectedIndex == -1)
            {
                RadioButtonList1.SelectedIndex = 0;
              
            }
        }
        public IQueryable<Category> GetCategories()
        {
            var _db = new AppBackToReality.Models.ScreenContext();
            IQueryable<Category> query = _db.Categories;

            return query;
        }

        public IQueryable<Screen> GetScreens()
        {
            var _db = new AppBackToReality.Models.ScreenContext();
            IQueryable<Screen> query = _db.Screens;           
            
            return query;
        }

        protected void SelectionChanged(object sender, EventArgs e)
        {
            Image1.ImageUrl = RadioButtonList1.SelectedValue;
        }

        //Add screen button
        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            ShoppingCartActions actions = new ShoppingCartActions();
            actions.AddToCart(RadioButtonList1.SelectedIndex + 1);

            TextBox1.Text = "";
            RadioButtonList1.ClearSelection();
            FileUpload1.Attributes.Clear();
        }


        //Finish and checkout button
        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            ShoppingCartActions actions = new ShoppingCartActions();
            actions.AddToCart(RadioButtonList1.SelectedIndex + 1);

            Server.Transfer("Cart.aspx");
        }
    }
}