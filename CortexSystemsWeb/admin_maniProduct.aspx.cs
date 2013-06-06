using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class admin_maniProduct : System.Web.UI.Page
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

            Session["previous"] = "~/admin_maniProduct.aspx";
        }

      if ((!Page.IsPostBack))
      {
          DataTable dt1 = dba.getAllCategories();
          ddlcategory.DataSource = dt1;
          ddlcategory.DataValueField = "cname";
          ddlcategory.DataTextField = "cname";
          ddlcategory.DataBind();
      }

      if ((!Page.IsPostBack))
      {
          DataTable dt2 = dba.getAllProducts();
          ddlproducts.DataSource = dt2;
          ddlproducts.DataValueField = "pname";
          ddlproducts.DataTextField = "pname";
          ddlproducts.DataBind();
      }

        }
    protected void  btnlog_Click(object sender, EventArgs e)
{
            Session.Abandon();
            Response.Redirect("~/default.aspx");
       
}


    protected void btndelete_Click(object sender, EventArgs e)
    {
        if (dba.deleteProduct(ddlproducts.SelectedItem.ToString()))
        {
            lblstsdelete.Text = "Successfully Deleted";

            if ((!Page.IsPostBack))
            {
                DataTable dt1 = dba.getAllProducts();
                ddlproducts.DataSource = dt1;
                ddlproducts.DataValueField = "pname";
                ddlproducts.DataTextField = "pname";
                ddlproducts.DataBind();
            }
        }
        else
        {
            lblstsdelete.Text = "Could not Delete";
        }
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
       
        string product = ddlproducts.SelectedItem.ToString();
        string category = ddlcategory.SelectedItem.ToString();
        string proname = txtproname.Text;
        string prodesclong = txtprodesclong.Text;
        string prodescshort = txtprodescshort.Text;
        string imageurl = txtproimgurl.Text;
        string imageurl2 = txtproimageurl2.Text;
        string proprice = txtproprice.Text;

        bool check = dba.updateProduct(product, category, proname, prodesclong, prodescshort, imageurl, imageurl2, proprice );

        if (check)
            lblstatupdate.Text = "Update Successfull!";
        else
            lblstatupdate.Text = "Update Unsuccessful!";
    }
}


 