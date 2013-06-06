using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Change_Password : System.Web.UI.Page
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
                Session["previous"] = "~/Change Password.aspx";
                Response.Redirect("~/Login.aspx");
            }
            else
            {
                this.btnlog.Text = "Logout";
                Session["previous"] = "~/Change Password.aspx";
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


    protected void btnConfirm_Click(object sender, EventArgs e)
    {
         if(txtCurentPassword.Text.Equals(""))
         {
             lblOpasswordEmptyError.Visible=true;
             lblOpasswordEmptyError.Text="Please Enter Your old password.";
         }
         else
         {
             lblOpasswordEmptyError.Visible =false;
             bool status = dba.userverification(Session["user"].ToString().ToLower(), txtCurentPassword.Text);
             if (status)
             {
                 txtCurentPassword.Enabled = false;
                 btnConfirm.Enabled = false;
                 lblOpasswordWrongError.Visible = false;
                 lblLabelNpassword.Visible = true;
                 lblLabelCNpassword.Visible = true;
                 txtNewPassword.Visible = true;
                 txtConfirmNewPassword.Visible = true;
                 btnChange.Visible = true;

             }
             else
             {
                 txtCurentPassword.Enabled =true;
                 btnConfirm.Enabled = true;
                 lblOpasswordWrongError.Visible = true;
                 lblOpasswordWrongError.Text = "Wrong Password !";
                 txtCurentPassword.Text = " ";
                 lblLabelCNpassword.Visible = false;
                 lblLabelCNpassword.Visible = false;
                 txtNewPassword.Visible = false;
                 txtConfirmNewPassword.Visible = false;
                 btnChange.Visible = false;


             }
         }
    }
    protected void btnChange_Click(object sender, EventArgs e)
    {
        bool result=true;
        if (txtNewPassword.Text.Equals(""))
        {   
            lblNpasswordEmptyError.Visible = true;
            lblCNpasswordEmptyError.Visible =false;
            lblComparepasswordWrongError.Visible = false;
            lblNpasswordEmptyError.Text = "Enter a new password !";
            result = false;
        }
        if (txtConfirmNewPassword.Text.Equals(""))
        {
            lblCNpasswordEmptyError.Visible = true;
            lblNpasswordEmptyError.Visible =false;
            lblComparepasswordWrongError.Visible = false;
            lblCNpasswordEmptyError.Text = "Confirm your new password !";
            result = false;
        }
        if (txtNewPassword.Text!=txtConfirmNewPassword.Text)
        {
            lblCNpasswordEmptyError.Visible = false;
            lblNpasswordEmptyError.Visible = false;
            lblComparepasswordWrongError.Visible = true;
            lblCNpasswordEmptyError.Text = "Confirm your new password correctly !";
            result = false;
        }

        if (result)
        { 
        string user=Session["user"].ToString();
        bool status = dba.changepassword(user.ToLower(), txtNewPassword.Text);
                if (status)
                {
                Response.Redirect("~/PasswordChangeSuccess.aspx");
                }

                 else
                 {
                     lblCNpasswordEmptyError.Visible = false;
                     lblNpasswordEmptyError.Visible = false;
                     lblComparepasswordWrongError.Visible = false;
                     lblResult.Visible = true;
                     lblResult.Text = "Passworrd Not Changed Success !";
                 }

        }
        
    }
}