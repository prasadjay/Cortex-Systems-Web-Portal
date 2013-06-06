using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ProductCompare : System.Web.UI.Page
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
                Session["previous"] = "~/ProductCompare.aspx";
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
    protected void btnconfirm_Click(object sender, EventArgs e)
    {
        string cat = ddlcategory.SelectedItem.ToString();

        DataTable dt1 = dba.getAllProducts(cat);
        ddlpro1.DataSource = dt1;
        ddlpro1.DataValueField = "pname";
        ddlpro1.DataTextField = "pname";
        ddlpro1.DataBind();

        DataTable dt2 = dba.getAllProducts(cat);
        ddlpro2.DataSource = dt2;
        ddlpro2.DataValueField = "pname";
        ddlpro2.DataTextField = "pname";
        ddlpro2.DataBind();


    }
    protected void btncompare_Click(object sender, EventArgs e)
    {
        string pro1 = ddlpro1.SelectedItem.ToString();
        string pro2 = ddlpro2.SelectedItem.ToString();

        Session["pro1"] = pro1;
        Session["pro2"] = pro2;





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