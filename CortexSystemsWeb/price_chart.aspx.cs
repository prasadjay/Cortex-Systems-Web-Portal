using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class price_chart : System.Web.UI.Page
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
                Session["previous"] = "~/price_chart.aspx";
            }
        }

        if ((!Page.IsPostBack))
        {
            DataTable dt1 = dba.getAllCategories();
            ddlcategory.DataSource = dt1;
            ddlcategory.DataValueField = "cname";
            ddlcategory.DataTextField = "cname";
            ddlcategory.DataBind();
        }

    }
    protected void btnpricegen_Click(object sender, EventArgs e)
    {
        string cat = ddlcategory.SelectedItem.ToString();
        Session["button"] = cat;
        //DataSet ds = dba.getProducts(cat);
        //dgvchart.DataSource = ds.Tables["products"].DefaultView;
        //dgvchart.DataBind();


    }
protected void  btnlog_Click(object sender, EventArgs e)
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


