using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class admin_orderMgr : System.Web.UI.Page
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


            Session["previous"] = "~/admin_orderMgr.aspx";
        }


        if ((!Page.IsPostBack))
        {
            DataTable dt1 = dba.getPendingOrderList();
            ddlpending.DataSource = dt1;
            ddlpending.DataValueField = "order";
            ddlpending.DataTextField = "order";
            ddlpending.DataBind();
        }

        Session["one"] = "Not Deleivered";
        Session["two"] = "Issued";
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    //protected void gridview1_RowCommand(object sender, GridViewCommandEventArgs e)
    //{
    //    Int32 index = System.Convert.ToInt32(e.CommandArgument);
    //    string temp=(GridView1.Rows[index].Cells[0].ToString());
    //    int name = Convert.ToInt32(temp);
            

    //    bool check = dba.issueOrders(name);

    //    if (check)er Shipped Successfully!";
    //    }
    //    else
    //    {
    //        lblstat.Text = "Order Shipping was unsuccessful!";
    //    }




    //}
    protected void btnlog_Click(object sender, EventArgs e)
    {
            Session.Abandon();
            Response.Redirect("~/default.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btnissue_Click(object sender, EventArgs e)
    {
        string name = ddlpending.SelectedItem.ToString();
        int id = Convert.ToInt32(name);

        bool check = dba.updatePendingOrder(id);

        if (check)
        {
            lblstat.Text = "Update Successful!";

        }
        else
            lblstat.Text = "Update Failed!";



        DataTable dt1 = dba.getPendingOrderList();
        ddlpending.DataSource = dt1;
        ddlpending.DataValueField = "order";
        ddlpending.DataTextField = "order";
        ddlpending.DataBind();
    }
}

