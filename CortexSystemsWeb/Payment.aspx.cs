using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Payment : System.Web.UI.Page
{
    double atotal;
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
                Session["previous"] = "~/cart.aspx";
                Response.Redirect("~/login.aspx");

            }
            else
            {
                this.btnlog.Text = "Logout";
                if (Session["previous"].ToString() != "~/cart.aspx" && Session["previous"].ToString() != "~/Payment.aspx" )
                {
                    Session["previous"] = "~/Payment.aspx";
                    Response.Redirect("~/cart.aspx");
                }
                else
                {
                    double points = dba.getBonusPointsOfauser(Session["user"].ToString().ToLower());
                    lblBpoints.Text = points.ToString();
                  string total= Session["totalprice"].ToString();
                     atotal=System.Convert.ToDouble(total);
                    if (points > atotal)
                    {
                        this.btnpoints.Enabled = true;
                        this.btCard.Enabled = true;
                        Session["previous"] = "~/Payment.aspx";
                    }
                    else
                    {
                        btnpoints.Enabled = false;
                        this.btCard.Enabled = true;
                        Session["previous"] = "~/Payment.aspx";
                    }
                }

            }

        }
    }
    protected void btCard_Click(object sender, EventArgs e)
    {
        Session["previous"] = "~/Payment.aspx";
        Response.Redirect("~/paycard.aspx");
    }
    protected void btnpoints_Click(object sender, EventArgs e)
    {   Session["previous"] = "~/Payment.aspx";


    String user = Session["user"].ToString();

    int count = dba.CountNoOfItems(user);

    Int32 nextmainorderno = dba.CountNoOfAllOrders() + 1;//next main orderno
    Int32 nextCustomerorderno = dba.CountNoOfOrdersOfaCustomer(Session["user"].ToString().ToLower()) + 1;//next customer order no
    double sum = 0;
    for (int i = 0; i < count; i++)
    {
        
        string priceOfaProduct = GridView1.Rows[i].Cells[2].Text;
        double ApriceOfaProduct = System.Convert.ToDouble(priceOfaProduct);
        string quantity = GridView1.Rows[i].Cells[3].Text;

        string pname = GridView1.Rows[i].Cells[1].Text;
        Int32 Aquantity = System.Convert.ToInt32(quantity);
        double Aprice = ApriceOfaProduct * Aquantity;

       
        dba.AddOrders(Session["user"].ToString().ToLower(), nextmainorderno, nextCustomerorderno, pname, Aquantity, Aprice, "Not Deleivered");

        sum = sum + Aprice;
    }
        Int32 nextmainreceiptno = dba.CountNoOfAllReceipt() + 1;
        Int32 nextCustomerreceiptno = dba.CountNoReceiptsOfaCustomer(Session["user"].ToString().ToLower())+1;
        dba.AddReceipt(Session["user"].ToString().ToLower(), nextmainreceiptno, nextCustomerreceiptno, sum, "Bonus Points");


        dba.ClearCart(Session["user"].ToString().ToLower());
        dba.updateSubstractBonusPointsOfAuser(Session["user"].ToString().ToLower(), atotal);
        Label2.Visible = true;
        Label2.Text = "Your Transaction complete. " + Session["totalprice"].ToString() + " bonus Points reducted from your account.";
        btnHome.Visible = true;
        btCard.Enabled = false;
        btnpoints.Enabled = false;
        lblBpoints.Visible = false;
        Label1.Visible = false;
       
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
    protected void btnHome_Click(object sender, EventArgs e)
    {
        
        Response.Redirect("~/home.aspx");
    }
}