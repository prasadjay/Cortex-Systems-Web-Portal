using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SignUpDone : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
            Response.Redirect("~/default.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         Response.Redirect("~/LogIn.aspx");
      
        if (Session["user"].ToString().Equals("Guest"))
        {
            Session["previous"] = "~/SignUpDone.aspx";
            Response.Redirect("~/login.aspx");
        }
        else
        {
            Session.Abandon();
            Response.Redirect("~/default.aspx");
        }
    }
    
}