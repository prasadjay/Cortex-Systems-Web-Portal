using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class product : System.Web.UI.Page
{
    DB_Access dba = new DB_Access();
    string imgurl;
    string smaalimg;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
            Response.Redirect("~/default.aspx");
        else
        {
            if (Session["user"].ToString().Equals("Guest"))
            {
                this.btnlog.Text = "Login";
                if (Session["previous"].ToString() != "~/Products.aspx" && Session["previous"].ToString() != "~/OneProduct.aspx" && Session["previous"].ToString() != "~/Login.aspx" && Session["previous"].ToString() != "~/Search.aspx")
                {
                    Session["previous"] = "~/OneProduct.aspx";
                    Response.Redirect("~/categories.aspx");
                }
                else
                {
                    DataTable dt = dba.getOneProductRecord(Session["product"].ToString().ToLower());//load data for update form
                    imgurl = dt.Rows[0]["IMageurl"].ToString();

                    smaalimg = dt.Rows[0]["smallimg"].ToString();

                    this.imgProduct.ImageUrl = dt.Rows[0]["IMageurl"].ToString();
                    this.lblPname.Text = dt.Rows[0]["PName"].ToString();
                    this.txtPdescrip.Text = dt.Rows[0]["DEscrrip"].ToString();
                    this.lblPprice.Text = dt.Rows[0]["PRrice"].ToString();
                    Session["previous"] = "~/OneProduct.aspx";

                }
            }
            else
            {
                this.btnlog.Text = "Logout";
                if (Session["previous"].ToString() != "~/Products.aspx" && Session["previous"].ToString() != "~/OneProduct.aspx" && Session["previous"].ToString() != "~/Login.aspx")
                {
                    Session["previous"] = "~/OneProduct.aspx";
                    Response.Redirect("~/categories.aspx");
                }
                else
                {
                    DataTable dt = dba.getOneProductRecord(Session["product"].ToString().ToLower());//load data for update form
                    imgurl = dt.Rows[0]["IMageurl"].ToString();

                    smaalimg = dt.Rows[0]["smallimg"].ToString();

                    this.imgProduct.ImageUrl = dt.Rows[0]["IMageurl"].ToString();
                    this.lblPname.Text = dt.Rows[0]["PName"].ToString();
                    this.txtPdescrip.Text = dt.Rows[0]["DEscrrip"].ToString();
                    this.lblPprice.Text = dt.Rows[0]["PRrice"].ToString();
                    Session["previous"] = "~/OneProduct.aspx";

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
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btnAddToCart_Click(object sender, EventArgs e)
    {
        if (Session["user"].ToString().Equals("Guest"))
        {
            Session["previous"] = "~/OneProduct.aspx";
            Response.Redirect("~/login.aspx");
        }
        else
        {
            Session["previous"] = "~/OneProduct.aspx";
            string pimgurl = smaalimg;
            string pname = this.lblPname.Text;
            string uname = Session["user"].ToString();
            string pprice = this.lblPprice.Text;
            double apprice = System.Convert.ToDouble(pprice);

            string quantity = DropDownList1.SelectedItem.ToString();
            int aQuantity = System.Convert.ToInt32(quantity);

            bool status = dba.addProductToCart(uname, pimgurl, pname, apprice, aQuantity);
            if (status)
            {
                lbllError.Visible = true;
                lbllError.Text = pname + " add to the cart Successfully !";
            }
            else
            {
                lbllError.Visible = true;
                lbllError.Text = pname + " already in the cart !";
            }
        }
    }
    protected void Previous_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Products.aspx");
    }
}