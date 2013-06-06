using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    DB_Access dba = new DB_Access();
    string uname;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
            Response.Redirect("~/default.aspx");
        else
        {



        }
    }
    protected void btlogin_Click(object sender, EventArgs e)
    {
        bool status = dba.userverification(txtUserName.Text.ToLower(), txtPassword.Text);//error detected
        bool statusofavtive = dba.verifytheActivationOfUser(txtUserName.Text.ToLower(), txtPassword.Text);

         uname = txtUserName.Text.ToLower();
        if (status && statusofavtive)
        {
            Session["user"] = txtUserName.Text; //store username in user session object
            string checkadmin = Session["user"].ToString().ToLower();
            string redirecturl = Session["previous"].ToString();//store previous page tempory 
            if (checkadmin.Equals("admin"))
            {
                Session["previous"] = "~/Login.aspx";
                Response.Redirect("~/home.aspx");
            }
            else
            {
                Session["previous"] = "~/Login.aspx";
                string user = Session["user"].ToString();
                dba.ClearCart(user);
                if (redirecturl.Equals("~/SignUp.aspx"))//New editing
                    Response.Redirect("~/home.aspx");//
                else //
                Response.Redirect(redirecturl);


            }
        }

        else
        {
            if (!status &&  !statusofavtive )//error detected
            {
                lblLoginError.Text = " Invalid User name or Password ! ";
            }
            else if (status && !statusofavtive)
            {
                //txtUserName.Enabled = false;
                lblLoginError.Text = " Your account have deactivated !";
                lblLabelSendActivate.Visible = true;
                lblLabelSendActivate0.Visible = true;
                btnRequestActivate.Visible=true;
            }

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        uname = txtUserName.Text.ToLower();
        lblLabelSendActivate.Visible = false;
        lblLabelSendActivate0.Visible = false;
        btnRequestActivate.Visible = false;
        lblLabelSendActivate1.Visible = true;
        bool status = dba.sendAccountActivateRequest(uname);
        if (status)
            lblLabelSendActivate1.Visible = true;
        else
        {
            lblLabelSendActivate1.Visible = true;
             lblLabelSendActivate.Text = "Already there is a request send to admin to activate your account.";
        }
        
    }
}