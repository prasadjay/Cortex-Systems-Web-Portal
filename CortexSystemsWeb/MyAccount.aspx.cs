using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MyAccount : System.Web.UI.Page
{
    DB_Access dba = new DB_Access();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
            Response.Redirect("~/default.aspx");
        else
        {
            if (Session["user"].ToString().Equals("Guest"))
            {
                this.btnlog.Text = "Login";
                Session["previous"] = "~/MYAccount.aspx";
                Response.Redirect("~/Login.aspx");
            }
            else
            {
                this.btnlog.Text = "Logout";
                Session["previous"] = "~/MYAccount.aspx";
            }



            if(Session["user"].ToString().Equals("admin"))
                Button1.Visible = false;
                



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
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "Your acoount has been deactivated.";
        string stre= "Your acoount has been not deactivated.";

       bool status= dba.deactivateUserAccountByUser(Session["user"].ToString());
       if (status)
       {

           Response.Write("<script language='javascript'>alert('" + str + "');</script>");
           Response.Redirect("~/Default.aspx");
       }
       else
           Response.Write("<script language='javascript'>alert('" + stre + "');</script>");
    }
}