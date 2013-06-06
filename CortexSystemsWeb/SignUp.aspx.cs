using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SignUp : System.Web.UI.Page
{
    DB_Access dba = new DB_Access(); 
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnReg_Click(object sender, EventArgs e)
    {
        bool check = dba.registration(txtregUsrnme.Text.ToLower(), txtregPswrd.Text, txtregFname.Text, txtregLname.Text, txtregAddress.Text, txtregEmail.Text, txtsequrityq.Text, txtanswer.Text.ToLower());
        //check whether requested user name already given

        if (check)
        {
            Session["previous"] = "~/SignUp.aspx";
            Response.Redirect("~/SignUpDone.aspx");
        }
        else
        {
            this.lblerror.Text = "User name already exist. Use a anothe user name";
            this.txtregUsrnme.Text = " ";

        }

    }
}