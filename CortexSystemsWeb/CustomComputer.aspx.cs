using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class CustomComputer : System.Web.UI.Page
{

    double total = 0;

    DB_Access dba = new DB_Access();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("~/Default.aspx");
        }
        else
        {
            if (Session["user"].ToString().Equals("Guest"))
            {
                this.btnlog.Text = "Login";
            }
            else
            {
                this.btnlog.Text = "Logout";
                Session["previous"] = "~/CustomComputer.aspx";
            }
        }






        string a = "processors";
        if ((!Page.IsPostBack))
        {
            DataTable dt1 = dba.getAllProducts(a);
            ddlproc.DataSource = dt1;
            ddlproc.DataValueField = "pname";
            ddlproc.DataTextField = "pname";
            ddlproc.DataBind();
        }

        string b = "Motherboards";
        if ((!Page.IsPostBack))
        {
            DataTable dt2 = dba.getAllProducts(b);
            ddlmobo.DataSource = dt2;
            ddlmobo.DataValueField = "pname";
            ddlmobo.DataTextField = "pname";
            ddlmobo.DataBind();
        }

        string c = "GPU";
        if ((!Page.IsPostBack))
        {
            DataTable dt3 = dba.getAllProducts(c);
            ddlvga.DataSource = dt3;
            ddlvga.DataValueField = "pname";
            ddlvga.DataTextField = "pname";
            ddlvga.DataBind();
        }

        string d = "RAM";
        if ((!Page.IsPostBack))
        {
            DataTable dt4 = dba.getAllProducts(d);
            ddlram.DataSource = dt4;
            ddlram.DataValueField = "pname";
            ddlram.DataTextField = "pname";
            ddlram.DataBind();
        }

        string f = "DIS";
        if ((!Page.IsPostBack))
        {
            DataTable dt5 = dba.getAllProducts(f);
            ddldisply.DataSource = dt5;
            ddldisply.DataValueField = "pname";
            ddldisply.DataTextField = "pname";
            ddldisply.DataBind();
        }

        string g = "Hard Disk Drives";
        if ((!Page.IsPostBack))
        {
            DataTable dt6 = dba.getAllProducts(g);
            ddlhdd.DataSource = dt6;
            ddlhdd.DataValueField = "pname";
            ddlhdd.DataTextField = "pname";
            ddlhdd.DataBind();
        }

        string h = "Optical Drives";
        if ((!Page.IsPostBack))
        {
            DataTable dt7 = dba.getAllProducts(h);
            ddloptical.DataSource = dt7;
            ddloptical.DataValueField = "pname";
            ddloptical.DataTextField = "pname";
            ddloptical.DataBind();
        }


        string k = "Computer_Audio";
        if ((!Page.IsPostBack))
        {
            DataTable dt10 = dba.getAllProducts(k);
            ddlaudio.DataSource = dt10;
            ddlaudio.DataValueField = "pname";
            ddlaudio.DataTextField = "pname";
            ddlaudio.DataBind();
        }

        string l = "Keyboards";
        if ((!Page.IsPostBack))
        {
            DataTable dt11 = dba.getAllProducts(l);
            ddlkb.DataSource = dt11;
            ddlkb.DataValueField = "pname";
            ddlkb.DataTextField = "pname";
            ddlkb.DataBind();
        }

        string m = "Mouse";
        if ((!Page.IsPostBack))
        {
            DataTable dt12 = dba.getAllProducts(m);
            ddlmouse.DataSource = dt12;
            ddlmouse.DataValueField = "pname";
            ddlmouse.DataTextField = "pname";
            ddlmouse.DataBind();
        }

        string n = "UPS";
        if ((!Page.IsPostBack))
        {
            DataTable dt13 = dba.getAllProducts(n);
            ddlups.DataSource = dt13;
            ddlups.DataValueField = "pname";
            ddlups.DataTextField = "pname";
            ddlups.DataBind();
        }


    }
    protected void btntotal_Click(object sender, EventArgs e)
    {
       

        string pro = ddlproc.SelectedItem.ToString();
        DataTable dt1 = dba.getPrice(pro);
        string procost = dt1.Rows[0]["price"].ToString();
        double procost1 = Convert.ToDouble(procost);

        string mobo = ddlmobo.SelectedItem.ToString();
        DataTable dt2 = dba.getPrice(pro);
        string mobocost = dt1.Rows[0]["price"].ToString();
        double mobocost1 = Convert.ToDouble(mobocost);

        string vga = ddlvga.SelectedItem.ToString();
        DataTable dt3 = dba.getPrice(pro);
        string vgacost = dt1.Rows[0]["price"].ToString();
        double vgacost1 = Convert.ToDouble(vgacost);

        string ram = ddlram.SelectedItem.ToString();
        DataTable dt4 = dba.getPrice(pro);
        string ramcost = dt1.Rows[0]["price"].ToString();
        double ramcost1 = Convert.ToDouble(ramcost);


        //string display = ddldisply.SelectedItem.ToString();
        //DataTable dt5 = dba.getPrice(pro);
        //string displaycost = dt1.Rows[0]["price"].ToString();

        string hdd = ddlhdd.SelectedItem.ToString();
        DataTable dt6 = dba.getPrice(pro);
        string hddcost = dt6.Rows[0]["price"].ToString();
        double hddcost1 = Convert.ToDouble(hddcost);

        string optical = ddloptical.SelectedItem.ToString();
        DataTable dt7 = dba.getPrice(pro);
        string opticalcost = dt7.Rows[0]["price"].ToString();
        double opticalcost1 = Convert.ToDouble(opticalcost);

        string audio = ddlaudio.SelectedItem.ToString();
        DataTable dt8 = dba.getPrice(pro);
        string audiocost = dt8.Rows[0]["price"].ToString();
        double audiocost1 = Convert.ToDouble(audiocost);

        string kb = ddlkb.SelectedItem.ToString();
        DataTable dt9 = dba.getPrice(pro);
        string kbcost = dt9.Rows[0]["price"].ToString(); 
        double kbcost1 = Convert.ToDouble(kbcost);

        string mouse = ddlmouse.SelectedItem.ToString();
        DataTable dt10 = dba.getPrice(pro);
        string mousecost = dt10.Rows[0]["price"].ToString();
        double mousecost1 = Convert.ToDouble(mousecost);

        string ups = ddlups.SelectedItem.ToString();
        DataTable dt11 = dba.getPrice(pro);
        string upscost = dt11.Rows[0]["price"].ToString();
        double upscost1 = Convert.ToDouble(upscost);
      


     

     
        total = 0;
        total =  procost1 + mobocost1 + vgacost1 + ramcost1 + hddcost1 + opticalcost1 + audiocost1 + kbcost1 + mousecost1 + upscost1;
         
        lblcalc.Text = "Total : " + total.ToString();


        


    }
protected void  btncart_Click(object sender, EventArgs e)
{
     if (Session["user"].ToString().Equals("Guest"))
            {
                Response.Redirect("~/login.aspx");
            }

     else
     {
         //All other codes go here
     }
}
protected void  btnlog_Click(object sender, EventArgs e)
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
}



