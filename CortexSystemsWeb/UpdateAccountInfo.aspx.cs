using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class UpdateAccountInfo : System.Web.UI.Page
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
                Session["previous"] = "~/UpdateAccountInfo.aspx";
                Response.Redirect("~/Login.aspx");
            }
            else
            {
                this.btnlog.Text = "Logout";
                Session["previous"] = "~/UpdateAccountInfo.aspx";
            }

            if ((!Page.IsPostBack))//load data only if postback is false
            {
                DataTable dt = dba.getOneUserRecord(Session["user"].ToString().ToLower());//load data for update form
                this.txtregFname.Text = dt.Rows[0]["FName"].ToString();
                this.txtregLname.Text = dt.Rows[0]["LName"].ToString();
                this.txtregAddress.Text = dt.Rows[0]["Address"].ToString();
                this.txtregEmail.Text = dt.Rows[0]["Email"].ToString();
            }


            Session["previous"] = "~/UpdateAccountInfo.aspx";
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
    protected void btnReg_Click(object sender, EventArgs e)
    {
        //update data
        string username = Session["user"].ToString();
        bool status = dba.updateAccount(username.ToLower(), txtregFname.Text, txtregLname.Text, txtregAddress.Text, txtregEmail.Text);
        if (status)
        {
            lblerror.Text = "Update Success !";
            DataTable dt = dba.getOneUserRecord(Session["user"].ToString().ToLower());//load data for update form after udate finish
            this.txtregFname.Text = dt.Rows[0]["FName"].ToString();
            this.txtregLname.Text = dt.Rows[0]["LName"].ToString();
            this.txtregAddress.Text = dt.Rows[0]["Address"].ToString();
            this.txtregEmail.Text = dt.Rows[0]["Email"].ToString();
        }
        else
        {
            lblerror.Text = "Update not Success !";
        }
    }
    protected void btConfirm_Click(object sender, EventArgs e)
    {
        lblerror.Visible = false;
        if (txtpassword.Text.Equals(""))
        {
            lblerrorPassword.Text = "Enter password";
        }
        else
        {
            bool status = dba.userverification(Session["user"].ToString().ToLower(), txtpassword.Text);
            if (status)
            {
                lblerrorPassword.Text = " ";
                lblquestion.Visible = true;
                lblanswer.Visible = true;
                txtnewQuestion.Visible = true;
                txtnewAnswer.Visible = true;
                btModify.Visible = true;
                lblerrorPassword.Visible = false;
                txtpassword.Text = " ";
            }
            else
            {
                lblerrorPassword.Text = " Password is wrong ! ";
            }
        }
    }
    protected void btModify_Click(object sender, EventArgs e)
    {
        bool question = true;
        bool answer = true;


        if (this.txtnewQuestion.Text.Equals(""))
        {
            this.lblerrorquestion.Text = "Please Enter a Question";
            question = false;

        }
        if (this.txtnewAnswer.Text.Equals(""))
        {
            this.lblErroranswer.Text = "Please Enter an Answer";
            answer = false;
        }
        if (question && answer)
        {

            string userName = Session["user"].ToString();
            bool status = dba.updatequestion(userName, this.txtnewQuestion.Text, this.txtnewAnswer.Text.ToLower());
            if (status)
            {
                this.lblquestion.Visible = false;
                this.lblanswer.Visible = false;
                this.txtnewQuestion.Visible = false;
                this.txtnewAnswer.Visible = false;
                this.btModify.Visible = false;
                this.lblmessage.Text = "Security Question and Answer Modified Successfully !";
                this.lblmessage.Visible = true;
                this.lblerrorquestion.Visible = false;
                this.lblErroranswer.Visible = false;
            }
            else
            {
                this.lblmessage.Text = "Security Question and Answer not  Modified Successfully !";
                this.txtnewQuestion.Text = "";
                this.txtnewAnswer.Text = "";
                this.lblmessage.Visible = true;
            }

        }
    }
}