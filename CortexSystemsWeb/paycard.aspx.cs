using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class paycard : System.Web.UI.Page
{DB_Access dba = new DB_Access(); 
    protected void Page_Load(object sender, EventArgs e)
    {
        double atotal;


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
                if (Session["previous"].ToString() != "~/Payment.aspx" && Session["previous"].ToString() != "~/Paycard.aspx")
                {
                    Session["previous"] = "~/paycard.aspx";
                    Response.Redirect("~/paycard.aspx");
                }
                else
                {
                }
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
protected void  btConfirm0_Click(object sender, EventArgs e)
{
    Session["previous"] = "~/Paycard.aspx";

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
    Int32 nextCustomerreceiptno = dba.CountNoReceiptsOfaCustomer(Session["user"].ToString().ToLower()) + 1;
    dba.AddReceipt(Session["user"].ToString().ToLower(), nextmainreceiptno, nextCustomerreceiptno, sum, "Card");








        dba.ClearCart(Session["user"].ToString());
    double percentage=dba.getBonusGivingpercentage("admin");
    
    string total= Session["totalprice"].ToString();
    double atotal=System.Convert.ToDouble(total);

    double givingbonus=atotal*(percentage/100.0);
    string bonus = givingbonus.ToString();
    lbllabel.Visible = true;
    lbllabel.Text = "Your Transaction complete." + "You have been awarded with " + bonus + " bonus Points.";
    btnHome.Visible = true;
    btConfirm0.Visible= false;
   txtCreditCno.Visible = false;
   txtCreditCno0.Visible = false;
   TextBox1.Visible = false;
   TextBox2.Visible = false;
    

    dba.updateAddBonusPointsOfAuser(Session["user"].ToString(),givingbonus);
       
}

protected void btnHome_Click(object sender, EventArgs e)
{
    Response.Redirect("~/home.aspx");
}
}