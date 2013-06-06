using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RecoverPassword : System.Web.UI.Page
{
    DB_Access dba = new DB_Access();
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["previous"] = "~/RecoverPassword.aspx";
    }
    protected void btnRecover_Click(object sender, EventArgs e)
    {
        if (txtUserName.Text.Equals(""))
        {
            lblEmptyUsernameError.Visible = true;
            lblEmptyUsernameError.Text = "Enter a user name !";
        }
        else
        {
            lblEmptyUsernameError.Visible = false;

            String squestion = dba.RequestQuestionForRecover(this.txtUserName.Text.ToLower());
            if (!squestion.Equals("false"))
            {
                txtUserName.Enabled = false;

                lblWrongUserNameError.Visible = false;
                lblQuestionlabel.Visible = true;
                lblQuestion.Visible = true;
                lblQuestion.Text = squestion;
                lblAnswerlabel.Visible = true;
                txtanswer.Visible = true;
                btnsubmit.Visible = true;
            }
            else
            {

                lblWrongUserNameError.Visible = true;
                lblWrongUserNameError.Text = "Wrong user name";
                lblQuestionlabel.Visible = false;
                lblQuestion.Visible = false;

                lblAnswerlabel.Visible = false;
                txtanswer.Visible = false;
                btnsubmit.Visible = false;
            }
        }

    }


    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (txtanswer.Text.Equals(""))
        {
            lblEmptyAnswerError.Visible = true;
            lblEmptyAnswerError.Text = "Enter answer !";
        }
        else
        {
            lblEmptyAnswerError.Visible = false;
            bool status = dba.verifyAnswer(txtUserName.Text.ToLower(), txtanswer.Text.ToLower());

            if (status)
            {
                lblWrongAnswerError.Visible = false;
                lblNewPasswordlabel.Visible = true;
                txtpassword.Visible = true;
                btnChange.Visible = true;
            }
            else
            {
                lblWrongAnswerError.Visible = true;
                lblWrongAnswerError.Text = "Wrong answer !";
                lblNewPasswordlabel.Visible = false;
                txtpassword.Visible = false;
                btnChange.Visible = false;
            }
        }

    }
    protected void btnChange_Click(object sender, EventArgs e)
    {
        if (txtpassword.Text.Equals(""))
        {
            lblEmptyPasswordError.Visible = true;
            lblEmptyAnswerError.Text = "Enter a new password !";
        }
        else
        {
            lblEmptyPasswordError.Visible = false;
            bool status = dba.changepassword(txtUserName.Text.ToLower(), txtpassword.Text);
            if (status)
            {
                Response.Redirect("~/Recovered Success.aspx");

            }
            else
            {
                lblPasswordChangeStatus.Visible = true;
                lblPasswordChangeStatus.Text = "Recovered fail !";
            }
        }
    }
}