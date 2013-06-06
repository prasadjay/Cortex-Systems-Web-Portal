using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cart : System.Web.UI.Page
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
                Session["previous"] = "~/cart.aspx";
                Response.Redirect("~/login.aspx");

            }
            else
            {
                this.btnlog.Text = "Logout";
                Session["previous"] = "~/cart.aspx";

                String user=Session["user"].ToString();

                int count = dba.CountNoOfItems(user);
                this.lblNoOfItems.Text = count.ToString();
                double sum = 0;
                for (int i = 0; i < count; i++)
                {
                    string priceOfaProduct = GridView1.Rows[i].Cells[2].Text;
                    double ApriceOfaProduct = System.Convert.ToDouble(priceOfaProduct);

                    string quantity = GridView1.Rows[i].Cells[3].Text;
                    double Aquantity = System.Convert.ToDouble(quantity);

                    double Aprice = ApriceOfaProduct * Aquantity;


                    sum = sum + Aprice;
                }
                if (sum == 0)
                {
                    btnpay.Enabled = false;
                    string strsum = sum.ToString();
                    this.lblTotalPrice.Text = strsum;
                    Session["totalprice"] = strsum;
                }
                else
                {
                    btnpay.Enabled =true;
                    string strsum = sum.ToString();
                    this.lblTotalPrice.Text = strsum;
                    Session["totalprice"] = strsum;
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

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {//remove a item from cart
        Int32 index = System.Convert.ToInt32(e.CommandArgument);

        string pname = GridView1.Rows[index].Cells[1].Text;
        string user = Session["user"].ToString();
        dba.RemoveAItemFromCart(user.ToLower(), pname.ToLower());
        Response.Redirect("~/cart.aspx");

        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Payment.aspx");
    }
}