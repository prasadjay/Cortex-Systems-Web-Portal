using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class search : System.Web.UI.Page
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
            }
            else
            {
                this.btnlog.Text = "Logout";
                Session["previous"] = "~/Search.aspx";
            }
        }
    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        string key = txtsearch.Text;
        

        string n = "%" + key + "%";
        Session["pro"] = n;
        
    }
protected void  dgvsearch_SelectedIndexChanged(object sender, EventArgs e)
{

}

    protected void dgvsearch_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Int32 index = System.Convert.ToInt32(e.CommandArgument);

       Session["product"] = GridView1.Rows[index].Cells[2].Text;
       Session["previous"] = "~/Search.aspx";
       Response.Redirect("~/OneProduct.aspx");

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
}


