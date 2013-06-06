using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_proMgr : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
            Response.Redirect("~/default.aspx");
        else
        {
            if (Session["user"].ToString().ToLower() != "admin")
            {
                Response.Redirect("~/home.aspx");
            }

            Session["previous"] = "~/admin_proMgr.aspx";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin_addCategory.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin_addProduct.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin_maniProduct.aspx");
    }
    protected void btnlog_Click(object sender, EventArgs e)
    {
            Session.Abandon();
            Response.Redirect("~/default.aspx");
       
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        string cat = DropDownList1.SelectedItem.ToString();

        Session["one"] = cat;
    }
}