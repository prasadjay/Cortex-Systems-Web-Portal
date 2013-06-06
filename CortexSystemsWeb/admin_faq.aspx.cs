using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class admin_faq : System.Web.UI.Page
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
        }

        Session["previous"] = "~/admin_faq.aspx";

        if ((!Page.IsPostBack))
        {
            DataTable dt1 = dba.getAllQuestions();
            ddlqnumber.DataSource = dt1;
            ddlqnumber.DataValueField = "qno";
            ddlqnumber.DataTextField = "qno";
            ddlqnumber.DataBind();
        }
    }
protected void  btnviewquestion_Click(object sender, EventArgs e)
{
    string qnumber = ddlqnumber.SelectedItem.ToString();

    DataSet ds = dba.getQuestion(qnumber);
    GridView1.DataSource = ds.Tables["faq"].DefaultView;
    GridView1.DataBind();

}
protected void  submitans_Click(object sender, EventArgs e)
{
    string answer = TextBox1.Text;
    string number = ddlqnumber.SelectedItem.ToString();
    int qnumber = System.Convert.ToInt32(number);

    bool check = dba.insertAnswer(answer, qnumber);

    if(check)
        lblstat.Text = "Answer Submitted Successfully!";
    else
        lblstat.Text = "Answer Submitting Interrupted!";

        DataTable dt1 = dba.getAllQuestions();
        ddlqnumber.DataSource = dt1;
        ddlqnumber.DataValueField = "qno";
        ddlqnumber.DataTextField = "qno";
        ddlqnumber.DataBind();




}
protected void  btnlog_Click(object sender, EventArgs e)
{
    
            Session.Abandon();
            Response.Redirect("~/default.aspx");
      
}
}

