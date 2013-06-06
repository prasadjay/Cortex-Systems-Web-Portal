using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
            Response.Redirect("~/default.aspx");
        else
        {
            if (Session["user"].ToString().Equals("Guest"))
            {
                Session["previous"] = "~/home.aspx";
                this.btnlog.Text = "Login";
                
            }
            else
            {
                this.btnlog.Text = "Logout";
                if (Session["user"].ToString().ToLower().Equals("admin"))
                {
                    Session["previous"] = "~/home.aspx";
                    btnAdmin.Visible = true;
                }
                else
                {
                    Session["previous"] = "~/home.aspx";
                    btnAdmin.Visible =false;
                }
            }






            
        }

    }
    protected void btnlog_Click(object sender, EventArgs e)
    {
        if (Session["user"].ToString().Equals("Guest"))
        {
            Response.Redirect("~/login.aspx");
        }
        else
        {
            Session.Abandon();
            Response.Redirect("~/default.aspx");
        }
    }
    protected void btnAdmin_Click(object sender, EventArgs e)
    {
        Session["previous"] = "~/home.aspx";
        Response.Redirect("~/admin.aspx");
    }
}