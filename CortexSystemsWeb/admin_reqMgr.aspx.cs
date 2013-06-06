using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class admin_reqMgr : System.Web.UI.Page
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


            Session["previous"] = "~/admin_reqMgr.aspx";
        }

        if ((!Page.IsPostBack))
        {
            DataTable dt1 = dba.getAllRequests();
            ddlcontacts.DataSource = dt1;
            ddlcontacts.DataValueField = "name";
            ddlcontacts.DataTextField = "name";
            ddlcontacts.DataBind();
        }
    }
    protected void btnlog_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("~/default.aspx");
    }
protected void  btnview_Click(object sender, EventArgs e)
{
    string name = ddlcontacts.SelectedItem.ToString();

    DataSet ds = dba.getContactInfo(name);
    dgvcontact.DataSource = ds.Tables["contact"].DefaultView;
    dgvcontact.DataBind();


}
protected void  btnreview_Click(object sender, EventArgs e)
{
    string name = ddlcontacts.SelectedItem.ToString();
    bool check = dba.updateContact(name);

    if (check)
        lblstat.Text = "Successfully Reviewed!";
    else
        lblstat.Text = "Reviewing Aborted! Error!";


            DataTable dt1 = dba.getAllRequests();
            ddlcontacts.DataSource = dt1;
            ddlcontacts.DataValueField = "name";
            ddlcontacts.DataTextField = "name";
            ddlcontacts.DataBind();
}
}

