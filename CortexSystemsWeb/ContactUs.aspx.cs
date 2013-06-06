using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contact_Us : System.Web.UI.Page
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
            }






            Session["previous"] = "~/ContactUs.aspx";
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
    protected void btnContactSubmit_Click(object sender, EventArgs e)
    {
        bool check = dba.submitContact(txtbxContactName.Text, txtbxContactMail.Text, txtbxContactDesc.Text);

        if(check)
        {

        Session["contact"] = txtbxContactName.Text;
        Response.Redirect("ContactUsDone.aspx");

        }

        else
            lblerror.Text = "Error! Try again!";
    }
}



