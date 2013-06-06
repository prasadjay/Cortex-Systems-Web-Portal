using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class faq : System.Web.UI.Page
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
                Session["previous"] = "~/faq.aspx";
            }


        }

    }
    protected void btnask_Click(object sender, EventArgs e)
    {
        string username = txtname.Text;
        string question = TextBox1.Text;
        int id = dba.getFaqId() + 1;

        bool check = dba.insertQuestion(id, username, question);

        if (check)
            lblstat.Text = "Question Submitted Successfully!";
        else
            lblstat.Text = "Question Submission Failed!";
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
}








