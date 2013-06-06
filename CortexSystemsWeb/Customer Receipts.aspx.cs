using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Default4 : System.Web.UI.Page
{
    DB_Access dba = new DB_Access();
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
                Session["previous"] = "~/OrdersOfACustomer.aspx";
                Response.Redirect("~/Login.aspx");
            }
            else
            {
                this.btnlog.Text = "Logout";
                Session["previous"] = "~/OrdersOfACustomer.aspx";
            }

            if ((!Page.IsPostBack))//load data only if postback is false
            {
                DataTable dt1 = dba.getReceiptNumbersOfaUser(Session["user"].ToString().ToLower());
                DropDownList1.DataSource = dt1;
                DropDownList1.DataValueField = "creceiprno";//load order nos for drop down list
                DropDownList1.DataTextField = "creceiprno";
                DropDownList1.DataBind();

                DataSet ds = dba.getDetailsofAllReceiptOfaCustomer(Session["user"].ToString().ToLower());
                GridView1.DataSource = ds.Tables["Receipts"].DefaultView;
                GridView1.DataBind();
            }



            Session["previous"] = "~/Customer Receipts.aspx";
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
    protected void btnAll_Click(object sender, EventArgs e)
    {
        DataSet ds = dba.getDetailsofAllReceiptOfaCustomer(Session["user"].ToString().ToLower());
        GridView1.DataSource = ds.Tables["Receipts"].DefaultView;
        GridView1.DataBind();
    }
    protected void btnLastOrder_Click(object sender, EventArgs e)
    {
        int lastCReceiptNo = dba.CountNoReceiptsOfaCustomer(Session["user"].ToString().ToLower());
        if (lastCReceiptNo == -1)
        {
            lblError.Visible = true;
            lblError.Text = "You dont have any Receipts !";
        }
        else
        {
            lblError.Visible = false;
            DataSet ds = dba.getDetailsofANReceiptOfaCustomer(Session["user"].ToString().ToLower(), lastCReceiptNo);
            GridView1.DataSource = ds.Tables["Receipts"].DefaultView;
            GridView1.DataBind();
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string cuRno = DropDownList1.SelectedItem.ToString();
        int AcuRno = System.Convert.ToInt32(cuRno);
        DataSet ds = dba.getDetailsofANReceiptOfaCustomer(Session["user"].ToString().ToLower(), AcuRno);
        GridView1.DataSource = ds.Tables["Receipts"].DefaultView;
        GridView1.DataBind();

    }
}