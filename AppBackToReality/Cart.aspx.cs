using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppBackToReality.Models;
using AppBackToReality.Logic;

namespace AppBackToReality
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using(ShoppingCartActions usersShopCart = new ShoppingCartActions())
            {
                decimal cartTotal = 0;
                cartTotal = usersShopCart.GetTotal();
                lblTotal.Text = String.Format("{0:c}", cartTotal);

                if(usersShopCart.GetCount() == 0)
                { 
                    CartList.Visible = false;
                    LabelTotalText.Visible = false;
                    lblTotal.Visible = false;
                    RemoveButton.Visible = false;

                    Button1.Visible = false;
                    PaypalStuff.Visible = false;

                    EmptyLabel.InnerText = "Cart Is Empty";
                }
            }
        }

        public List<CartItem> GetShoppingCartItems()
        {
            ShoppingCartActions actions = new ShoppingCartActions();
            return actions.GetCartItems();
        }

 
        protected void RemoveButton_Click(object sender, EventArgs e)
        {
            using(ShoppingCartActions actions = new ShoppingCartActions())
            {
                actions.RemoveAll();
                Server.Transfer("Cart.aspx");
            }
        }
        //
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            {
                Logic.AutoEmail.Send(User.Identity.Name, "AppBack2Reality Quote", "Dear Customer \n\nThe Amount your app will cost is: " + lblTotal.Text + "\n\nKind Regards \n\nAppBack Team xx");
                EmailStatus.InnerText = "Email Sent";
            }
            else
            {
                EmailStatus.InnerText = "You must be logged in to send email quote";
            }
            
            
        }
    }
}