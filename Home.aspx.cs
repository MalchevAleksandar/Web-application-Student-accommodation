using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            username.Text = (String)Session["username"];
            logInOutButton.Text = "Одјави се";
            
        } else
        {
            logInOutButton.Text = "Најави се";
        }
    }

    protected void logEvent(object sender, EventArgs e)
    {
        if (logInOutButton.Text.Equals("Одјави се"))
        {
            Session["username"] = null;
            Response.Redirect("Home.aspx");
        }
        else
        {
            Response.Redirect("Najava.aspx");
        }
    }
}