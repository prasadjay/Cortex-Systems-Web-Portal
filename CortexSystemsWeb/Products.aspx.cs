using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.lblUsr.Text = Session["user"].ToString();
        if (Session["user"] == null)
            Response.Redirect("~/default.aspx");
        else
        {
            if (Session["user"].ToString().Equals("Guest"))
            {
                this.btnlog.Text = "Login";
            }
            else
            {
                this.btnlog.Text = "Logout";
                if ((Session["previous"].ToString() != "~/Products.aspx") && (Session["previous"].ToString() != "~/categories.aspx") && (Session["previous"].ToString() != "~/OneProduct.aspx"))
                {
                    Session["previous"] = "~/Products.aspx";
                    Response.Redirect("~/categories.aspx");
                }
                else
                {
                    Session["previous"] = "~/Products.aspx";
                }
            }






            Session["previous"] = "~/Products.aspx";
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

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
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Int32 index = System.Convert.ToInt32(e.CommandArgument);

        Session["product"] = GridView1.Rows[index].Cells[1].Text;
        Response.Redirect("~/OneProduct.aspx");
    }
}