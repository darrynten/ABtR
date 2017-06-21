using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections.ObjectModel;

namespace AppBackToReality
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        public void contactEmail(object sender, EventArgs e)
        {

            Logic.AutoEmail.Send("appback2r@gmail.com", TextBox3.Text + " : " + TextBox2.Text + " : " + TextBox1.Text, TextBox4.Text);

            
            
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";

        }
    }
}