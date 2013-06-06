using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class OrdersOfACustomer : System.Web.UI.Page
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
                DataTable dt1 = dba.getorderNumbersOfaUser(Session["user"].ToString().ToLower());
                DropDownList1.DataSource = dt1;
                DropDownList1.DataValueField = "Cusorderno";//load order nos for drop down list
                DropDownList1.DataTextField = "Cusorderno";
                DropDownList1.DataBind();

                DataSet ds = dba.getDetailsofAllOrdertOfaCustomer(Session["user"].ToString().ToLower());
                GridView1.DataSource = ds.Tables["Corders"].DefaultView;
                GridView1.DataBind();
            }



            Session["previous"] = "~/OrdersOfACustomer.aspx";
        }
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
protected void btnAll_Click(object sender, EventArgs e)
{
    DataSet ds = dba.getDetailsofAllOrdertOfaCustomer(Session["user"].ToString().ToLower());
    GridView1.DataSource = ds.Tables["Corders"].DefaultView;
    GridView1.DataBind();
}
protected void btnLastOrder_Click(object sender, EventArgs e)
{
    int lastCOrderNo = dba.CountNoOfOrdersOfaCustomer(Session["user"].ToString().ToLower());
    if (lastCOrderNo == -1)
    {
        lblError.Visible = true;
        lblError.Text = "You dont have any Orders !";
    }
    else
    {
        lblError.Visible =false;
        DataSet ds = dba.getDetailsofANOrdertOfaCustomer(Session["user"].ToString().ToLower(), lastCOrderNo);
        GridView1.DataSource = ds.Tables["Corders"].DefaultView;
        GridView1.DataBind();
    }
}
protected void btnSubmit_Click(object sender, EventArgs e)
{
    string cuOno = DropDownList1.SelectedItem.ToString();
    int AcuOno = System.Convert.ToInt32(cuOno);
    DataSet ds = dba.getDetailsofANOrdertOfaCustomer(Session["user"].ToString().ToLower(), AcuOno);
    GridView1.DataSource = ds.Tables["Corders"].DefaultView;
    GridView1.DataBind();

}
}