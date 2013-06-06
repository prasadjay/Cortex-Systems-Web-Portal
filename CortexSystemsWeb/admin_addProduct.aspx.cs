using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class admin_addProduct : System.Web.UI.Page
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

            Session["previous"] = "~/admin_addProduct.aspx";
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
    protected void btnsubmit_Click(object sender, EventArgs e)
    {


        string catname = ddlcategory.SelectedItem.ToString();
        string proname = txtproname.Text;
        string prodesclong = txtprodesclong.Text;
        string prodescshort = txtprodescshort.Text;
        string proprice = txtproprice.Text;
        string image1 = txtproimgurl.Text;
        string image2 = txtproimageurl2.Text;

        bool check = dba.addProduct(image1, image2, catname, proname, prodescshort, prodesclong, proprice);
   

        if (check)
        {
            lblstat.Text = "Product Added Successfully!";
        }
        else
        {
            lblstat.Text = "Product Already Added!";

        }



        







    
}
    protected void btnlog_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("~/default.aspx");
    }
}