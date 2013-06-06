using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class admin_CustMgr : System.Web.UI.Page
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

            Session["previous"] = "~/admin_CustMgr.aspx";
        }

        if ((!Page.IsPostBack))
        {
            DataTable dt1 = dba.getAllCustomers();
            DropDownList1.DataSource = dt1;
            DropDownList1.DataValueField = "username";
            DropDownList1.DataTextField = "username";
            DropDownList1.DataBind();
        }

        if ((!Page.IsPostBack))
        {
            DataTable dt2 = dba.getAllCustRequest();
            DropDownList2.DataSource = dt2;
            DropDownList2.DataValueField = "username";
            DropDownList2.DataTextField = "username";
            DropDownList2.DataBind();
        }


        Session["one"] = "activate";
        Session["two"] = "admin";

    }
    protected void btnuserstat_Click(object sender, EventArgs e)
    {
        string name = DropDownList1.SelectedItem.ToString();
        bool check = dba.updateUserStat(name);

        if (check)
              lblmemstat.Text = "Deactivated Successfully!";
        else
              lblmemstat.Text = "Deactivation Suspended!";

      
            DataTable dt1 = dba.getAllCustomers();
            DropDownList1.DataSource = dt1;
            DropDownList1.DataValueField = "username";
            DropDownList1.DataTextField = "username";
            DropDownList1.DataBind();
       
       




    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        
    }
    protected void btndeluser_Click(object sender, EventArgs e)
    {
        string user = DropDownList1.SelectedItem.ToString();

        bool check = dba.deleteCustomer(user);

        if (check)
            lbldelstat.Text = "Deleted Successfully!";
        else
            lbldelstat.Text = "Delete Error!";

     
            DataTable dt1 = dba.getAllCustomers();
            DropDownList1.DataSource = dt1;
            DropDownList1.DataValueField = "username";
            DropDownList1.DataTextField = "username";
            DropDownList1.DataBind();


    }
protected void  btnlog_Click(object sender, EventArgs e)
{
     Session.Abandon();
            Response.Redirect("~/default.aspx");
}
protected void Button1_Click(object sender, EventArgs e)
{
    string uname = DropDownList1.SelectedItem.ToString();
    DataSet dt = dba.getAllCustomers(uname);

    GridView1.DataSource = dt.Tables["users"].DefaultView;
    GridView1.DataBind();
    
  
}
protected void btnacti_Click(object sender, EventArgs e)
{
    string name = DropDownList2.SelectedItem.ToString();

    bool check = dba.reactivateUser(name);

    if (check)
        lblacti.Text = "User Activated!";
    else
        lblacti.Text = "Error! Try again Later!";

    bool n = dba.deleteRequest(name);


   
   
        DataTable dt1 = dba.getAllCustRequest();
        DropDownList2.DataSource = dt1;
        DropDownList2.DataValueField = "username";
        DropDownList2.DataTextField = "username";
        DropDownList2.DataBind();
   



}
}


