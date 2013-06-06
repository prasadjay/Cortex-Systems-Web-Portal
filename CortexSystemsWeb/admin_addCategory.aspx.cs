using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class admin_addCategory : System.Web.UI.Page
{
    DB_Access dba = new DB_Access();
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

            Session["previous"] = "~/admin_addCategory.aspx";
        }

        if ((!Page.IsPostBack))
        {
            DataTable dt1 = dba.getAllCategories();
            ddlcat.DataSource = dt1;
            ddlcat.DataValueField = "cname";
            ddlcat.DataTextField = "cname";
            ddlcat.DataBind();
        }


    }
    protected void btnaddcategory_Click(object sender, EventArgs e)
    {
        string catname = txtcatname.Text;
        string caturl = txtcaturl.Text;

        bool check = dba.addCategory(catname/*.ToLower()*/, caturl/*.ToLower()*/);

        if (check)
        {
            lblstat.Text = "Category Successfully Added!";
        }
        else
        {
            lblstat.Text = "Category Already Added!";

        }




    }

    protected void btnlog_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("~/default.aspx");
    }
    protected void btndelcat_Click(object sender, EventArgs e)
    {
        //delete all data from products in that category

        string str = ddlcat.SelectedItem.ToString();
        bool check1 = dba.deleteProductFromCat(str);

        // delete category
        bool check = false;

        if (check1)
        {
            check = dba.deleteCategory(str);
        }

        if (check)
            lblstat2.Text = "Category Deleted!";
        else
            lblstat2.Text = "Eror! Category Not Deleted!";

        //refresh dropdown list


        if ((!Page.IsPostBack))
        {
            DataTable dt1 = dba.getAllCategories();
            ddlcat.DataSource = dt1;
            ddlcat.DataValueField = "cname";
            ddlcat.DataTextField = "cname";
            ddlcat.DataBind();
        }


    }
}