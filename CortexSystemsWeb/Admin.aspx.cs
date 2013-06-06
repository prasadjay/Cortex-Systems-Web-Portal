using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin : System.Web.UI.Page
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

            Session["previous"] = "~/admin.aspx";
        }



        int pendingOrders = dba.getPendingOrders();
        lblpendingorders.Text = pendingOrders.ToString();

        int pendingquestions = dba.getPendingQuestions();
        lblpendingquestions.Text = pendingquestions.ToString();

        int pendingContacts = dba.getPendingContacts();
        lblpendingcontacts.Text = pendingContacts.ToString();

        //...................

        int pendingActivations = dba.getPendingRequests();
        lblreq.Text = pendingActivations.ToString();

        int registered = dba.getRegisteredUsers();
        lbltotalusers.Text = registered.ToString();

        int active = dba.getActiveCount();
        lblactiveusers.Text = active.ToString();

        lbldeact.Text = (registered - active).ToString();

        double income = dba.getIncome();
        lblincome.Text = income.ToString();



    }
    protected void btnlog_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("~/default.aspx");
    }
    protected void btnrefresh_Click(object sender, EventArgs e)
    {
        int pendingOrders1 = dba.getPendingOrders();
        lblpendingorders.Text = pendingOrders1.ToString();

        int pendingquestions2 = dba.getPendingQuestions();
        lblpendingquestions.Text = pendingquestions2.ToString();

        int pendingContacts3 = dba.getPendingContacts();
        lblpendingcontacts.Text = pendingContacts3.ToString();


        int pendingActivations = dba.getPendingRequests();
        lblreq.Text = pendingActivations.ToString();

        int registered = dba.getRegisteredUsers();
        lbltotalusers.Text = registered.ToString();

        int active = dba.getActiveCount();
        lblactiveusers.Text = active.ToString();

        lbldeact.Text = (registered - active).ToString();

        double income = dba.getIncome();
        lblincome.Text = income.ToString();
    }
}