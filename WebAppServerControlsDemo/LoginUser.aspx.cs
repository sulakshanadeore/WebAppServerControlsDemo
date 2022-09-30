using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppServerControlsDemo
{
    public partial class WebForm1 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //postback readonly
            if (!IsPostBack)
            {
                Response.Write("Welcome to Login Page");
            }
            else
            {
                if (txtusername.Text=="abc" && txtpassword.Text=="abc@123")
                {
                    //Response.Write("You have logged in successfully");

                    // Response.Redirect("~/Welcome.aspx");
                    Response.Redirect("http://www.google.com");
                }
                else
                {
                    lblmessage.Text = "Invalid userid/password... Pls check..";
                }
                
            }

        }
    }
}