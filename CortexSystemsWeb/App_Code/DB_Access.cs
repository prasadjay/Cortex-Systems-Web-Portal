using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

/// <summary>
/// Summary description for DB_Access
/// </summary>
public class DB_Access
{
    SqlConnection conn;//create a sql connection
    public DB_Access()
    {
        conn = DB_Connect.GetConnection();//use db_connect class to get a connection
        //
        // TODO: Add constructor logic here
        //
    }

    public bool registration(string UserName, string Password, string FirstName, string LastName, string Address, string Email,
                            string SecurityQuestion, string Answer)
    {
        //register new user

        bool status = false;
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd1 = conn.CreateCommand();
        newCmd1.Connection = conn;
        newCmd1.CommandType = CommandType.Text;
        newCmd1.CommandText = "SELECT * FROM users WHERE uname='" + UserName + "'";
        SqlDataReader dr = newCmd1.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Close();
            status = false;
        }
        else
        {
            dr.Close();
            SqlCommand newCmd2 = conn.CreateCommand();
            newCmd2.Connection = conn;
            newCmd2.CommandType = CommandType.Text;
            newCmd2.CommandText = "INSERT INTO users VALUES('" + UserName + "' , '" + Password + "', '" + FirstName + "' , '" + LastName + "' , '" + Address + "' , '" + Email + "' , '" + SecurityQuestion + "' , '" + Answer + "',0,'activate')";
            newCmd2.ExecuteNonQuery();

            status = true;
        }
        return status;

    }

    public bool userverification(string username, string password)
    {
        //verifying  user login
        bool status = false;
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd1 = conn.CreateCommand();
        newCmd1.Connection = conn;
        newCmd1.CommandType = CommandType.Text;
        newCmd1.CommandText = "select * from users where uname='" + username + "' and upassword='" + password + "'";
        SqlDataReader dr = newCmd1.ExecuteReader();
        if (dr.HasRows)
        {

            status = true;
        }
        else
        {
            status = false;
        }
        dr.Close();
        return status;
    }

    public bool verifytheActivationOfUser(string username, string password)
    {
        //verifying  status of user ,active or deactive
        bool status = false;
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd1 = conn.CreateCommand();
        newCmd1.Connection = conn;
        newCmd1.CommandType = CommandType.Text;
        newCmd1.CommandText = "select * from users where uname='" + username + "' and upassword='" + password + "'and ustatus='activate' ";
        SqlDataReader dr = newCmd1.ExecuteReader();
        if (dr.HasRows)
        {

            status = true;
        }
        else
        {
            status = false;
        }
        dr.Close();
        return status;
    }
    public bool sendAccountActivateRequest(string UserName)
    {
        //send a request to admin to activate a deactivated account

        bool status = false;
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd1 = conn.CreateCommand();
        newCmd1.Connection = conn;
        newCmd1.CommandType = CommandType.Text;
        newCmd1.CommandText = "SELECT * FROM requestForUserActivation WHERE uname='" + UserName + "'";
        SqlDataReader dr = newCmd1.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Close();
            status = false;
        }
        else
        {
            dr.Close();
            SqlCommand newCmd2 = conn.CreateCommand();
            newCmd2.Connection = conn;
            newCmd2.CommandType = CommandType.Text;
            newCmd2.CommandText = "INSERT INTO requestForUserActivation VALUES('" + UserName + "')";
            newCmd2.ExecuteNonQuery();

            status = true;
        }
        return status;

    }
    public bool deactivateUserAccountByUser(string UserName)//////////////////////////////////////new
    { //use to deactivate useraccount  by user

        bool status = false;
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = "update users set ustatus= 'deactivate' Where uname='" + UserName + "'";
        newCmd.ExecuteNonQuery();
        status = true;
        return status;
    }
    public bool updateAccount(string UserName, string FirstName, string LastName, string Address, string Email)
    { //use to update the user info

        bool status = false;
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = "update users set fname = '" + FirstName + "', lname = '" + LastName + "', uaddress = '" + Address + "', email = '" + Email + "' Where uname='" + UserName + "'";
        newCmd.ExecuteNonQuery();
        status = true;
        return status;
    }

    public DataTable getOneUserRecord(string UserName)
    {//use to load user info to update form

        DataTable dt = new DataTable();
        dt.Columns.Add("FName", typeof(string));
        dt.Columns.Add("LName", typeof(string));
        dt.Columns.Add("Address", typeof(string));
        dt.Columns.Add("Email", typeof(string));
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = "select * from users where uname='" + UserName + "'";
        SqlDataReader dr = newCmd.ExecuteReader();
        while (dr.Read())
        {
            dt.Rows.Add(dr["fname"], dr["lname"], dr["uaddress"], dr["email"]);
        }
        conn.Close();
        return dt;
    }

    public bool updatequestion(string UserName, string SnewQuestion, string SnewAnswer)
    { //use to update the sequrity question and answer

        bool status = false;
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = "update users set squestion = '" + SnewQuestion + "', sanswer = '" + SnewAnswer + "' Where uname='" + UserName + "'";
        newCmd.ExecuteNonQuery();
        status = true;
        return status;
    }

    public string RequestQuestionForRecover(string UserName)
    {//request sequrity question for a password recovery
        DataTable dt = new DataTable();
        dt.Columns.Add("securityQuestion", typeof(string));

        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = "select squestion from users where uname='" + UserName + "'";
        SqlDataReader dr = newCmd.ExecuteReader();
        while (dr.Read())
        {
            dt.Rows.Add(dr["squestion"]);
        }
        if (dr.HasRows)
        {

            string squestion = dt.Rows[0]["securityQuestion"].ToString();
            dr.Close();
            conn.Close();
            return squestion;
        }
        else
        {
            dr.Close();
            conn.Close();
            return "false";

        }

    }

    public bool verifyAnswer(string UserName, string Answer)
    {//check whethe the given answer for password recovery is match with the answer stored in db
        DataTable dt = new DataTable();
        dt.Columns.Add("answer", typeof(string));
        string UseroriginalAnswer;

        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = "select sanswer from users where uname='" + UserName + "'";
        SqlDataReader dr = newCmd.ExecuteReader();
        while (dr.Read())
        {
            dt.Rows.Add(dr["sanswer"]);
        }
        if (dr.HasRows)
        {
            UseroriginalAnswer = dt.Rows[0]["answer"].ToString();
            dr.Close();
            conn.Close();
            if (UseroriginalAnswer.Equals(Answer))
                return true;
            else return false;

        }

        else
        {
            dr.Close();
            conn.Close();
            return false;
        }
    }

    public bool changepassword(string UserName, string SnewPassword)
    { //use to change the password

        bool status = false;
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = "update users set upassword = '" + SnewPassword + "' Where uname='" + UserName + "'";
        newCmd.ExecuteNonQuery();
        status = true;
        return status;
    }

    public Int32 CountNoOfItems(string UserName)
    {
        //count no of items in the cart
        DataTable dt = new DataTable();
        dt.Columns.Add("count", typeof(Int32));

        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = "select count(pname) as counti from cart Where uname='" + UserName + "'";
        SqlDataReader dr = newCmd.ExecuteReader();
        while (dr.Read())
        {
            dt.Rows.Add(dr["counti"]);
        }
        if (dr.HasRows)
        {

            string strcount = dt.Rows[0]["count"].ToString();
            Int32 nitems = System.Convert.ToInt32(strcount);
            dr.Close();
            conn.Close();
            return nitems;
        }
        else
        {
            dr.Close();
            conn.Close();
            return -1;
        }
    }

    public void RemoveAItemFromCart(string UserName, string Pname)
    {//remove a item from cart
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd1 = conn.CreateCommand();
        newCmd1.Connection = conn;
        newCmd1.CommandType = CommandType.Text;
        newCmd1.CommandText = "delete from cart where uname='" + UserName + "' AND pname='" + Pname + "' ";
        newCmd1.ExecuteNonQuery();

        conn.Close();
    }

    public void ClearCart(string UserName)
    {//remove a item from cart
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd1 = conn.CreateCommand();
        newCmd1.Connection = conn;
        newCmd1.CommandType = CommandType.Text;
        newCmd1.CommandText = "delete from cart where uname='" + UserName + "' ";
        newCmd1.ExecuteNonQuery();

        conn.Close();
    }

    public double getBonusPointsOfauser(string UserName)
    {//get bonus points of a user
        DataTable dt = new DataTable();
        dt.Columns.Add("points", typeof(string));
        string points;

        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = "select bpoints from users where uname='" + UserName + "'";
        SqlDataReader dr = newCmd.ExecuteReader();
        while (dr.Read())
        {
            dt.Rows.Add(dr["bpoints"]);
        }
        if (dr.HasRows)
        {
            points = dt.Rows[0]["points"].ToString();
            dr.Close();
            conn.Close();
            double apoints = System.Convert.ToDouble(points);
            return apoints;
        }

        else
        {
            dr.Close();
            conn.Close();
            return 0;
        }
    }

    public void updateSubstractBonusPointsOfAuser(string UserName, double value)
    {//check whethe the given answer for password recovery is match with the answer stored in db



        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = "update users set bpoints=bpoints-" + value + " where uname='" + UserName + "'";
        newCmd.ExecuteNonQuery();

        conn.Close();


    }

    public void updateAddBonusPointsOfAuser(string UserName, double value)
    {//add bonus points for a user



        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = "update users set bpoints=bpoints+" + value + " where uname='" + UserName + "'";
        newCmd.ExecuteNonQuery();

        conn.Close();


    }

    public double getBonusGivingpercentage(string UserName)
    {//get bonus points giving percentage
        DataTable dt = new DataTable();
        dt.Columns.Add("bpercentage", typeof(double));
        string points;

        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = "select percentage from bonus where uname='" + UserName + "'";
        SqlDataReader dr = newCmd.ExecuteReader();
        while (dr.Read())
        {
            dt.Rows.Add(dr["percentage"]);
        }
        if (dr.HasRows)
        {
            points = dt.Rows[0]["bpercentage"].ToString();
            dr.Close();
            conn.Close();
            double apercentage = System.Convert.ToDouble(points);
            return apercentage;
        }

        else
        {
            dr.Close();
            conn.Close();
            return 0;
        }
    }


    public DataTable getOneProductRecord(string ProName)
    {//use to send product  info to product form

        DataTable dt = new DataTable();
        dt.Columns.Add("IMageurl", typeof(string));
        dt.Columns.Add("PName", typeof(string));
        dt.Columns.Add("DEscrrip", typeof(string));
        dt.Columns.Add("PRrice", typeof(string));
        dt.Columns.Add("smallimg", typeof(string));
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = "select * from products where pname='" + ProName + "'";
        SqlDataReader dr = newCmd.ExecuteReader();
        while (dr.Read())
        {
            dt.Rows.Add(dr["imageurl2"], dr["pname"], dr["descrip"], dr["price"], dr["imageurl"]);
        }
        conn.Close();
        return dt;
    }

    public bool addProductToCart(string UserName, string ImageUrl, string ProductName, double Price, int Quantity)
    {
        //add product to cart

        bool status = false;
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd1 = conn.CreateCommand();
        newCmd1.Connection = conn;
        newCmd1.CommandType = CommandType.Text;
        newCmd1.CommandText = "SELECT * FROM cart WHERE uname='" + UserName + "' AND pname='" + ProductName + "'";
        SqlDataReader dr = newCmd1.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Close();
            status = false;
        }
        else
        {
            dr.Close();
            SqlCommand newCmd2 = conn.CreateCommand();
            newCmd2.Connection = conn;
            newCmd2.CommandType = CommandType.Text;
            newCmd2.CommandText = "INSERT INTO cart VALUES('" + UserName + "' , '" + ImageUrl + "', '" + ProductName + "' , '" + Price + "' , '" + Quantity + "')";
            newCmd2.ExecuteNonQuery();

            status = true;
        }
        return status;

    }

    public DataTable getorderNumbersOfaUser(string UserName)
    {//get all order numbers of a customer
        DataTable dt = new DataTable();
        dt.Columns.Add("Cusorderno", typeof(int));

        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = "select distinct corderno from Corders where uname='" + UserName + "'";
        SqlDataReader dr = newCmd.ExecuteReader();
        while (dr.Read())
        {
            dt.Rows.Add(dr["corderno"]);
        }
        conn.Close();
        return dt;
    }

    public DataSet getDetailsofAllOrdertOfaCustomer(string UserName)
    {//get details of all orders of a customer
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = " select corderno as 'Order No',pname as 'Product Name',quantity as 'Quantity',tprice as 'Total Price',dstatus as 'Status' from Corders where uname='" + UserName + "'order by corderno desc";
        SqlDataAdapter da = new SqlDataAdapter(newCmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "Corders");
        conn.Close();
        return ds;
    }

    public DataSet getDetailsofANOrdertOfaCustomer(string UserName, int COrderNo)
    {//get details of a particular orders of a customer from order no
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = " select corderno as 'Order No',pname as 'Product Name',quantity as 'Quantity',tprice as 'Total Price',dstatus as 'Status' from Corders where uname='" + UserName + "' AND corderno='" + COrderNo + "' order by corderno desc";
        SqlDataAdapter da = new SqlDataAdapter(newCmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "Corders");
        conn.Close();
        return ds;
    }
    public Int32 CountNoOfOrdersOfaCustomer(string UserName)
    {
        //count no of orders of a customer and return it to find the customer orderno of last order of a customer.
        DataTable dt = new DataTable();
        dt.Columns.Add("Max", typeof(Int32));

        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = "select count(distinct corderno) as max from Corders Where uname='" + UserName + "'";
        SqlDataReader dr = newCmd.ExecuteReader();
        while (dr.Read())
        {
            dt.Rows.Add(dr["max"]);
        }
        if (dr.HasRows)
        {

            string strcount = dt.Rows[0]["Max"].ToString();
            Int32 norders = System.Convert.ToInt32(strcount);
            dr.Close();
            conn.Close();
            return norders;
        }
        else
        {
            dr.Close();
            conn.Close();
            return -1;
        }
    }

    public void AddOrders(string UserName, int MainOrderno, int CusOrderNo, string PName, int Quantity, double TPrice,
                            string Dstatus)
    {
        //add orders to order database

        bool status = false;
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }

        SqlCommand newCmd2 = conn.CreateCommand();
        newCmd2.Connection = conn;
        newCmd2.CommandType = CommandType.Text;
        newCmd2.CommandText = "INSERT INTO Corders VALUES(" + MainOrderno + ",'" + UserName + "' ,  " + CusOrderNo + " , '" + PName + "' , " + Quantity + " , " + TPrice + " , '" + Dstatus + "')";
        newCmd2.ExecuteNonQuery();

        status = true;
    }



    public Int32 CountNoOfAllOrders()
    {
        //count no of all orders  and return it to find the  orderno of last order .
        DataTable dt = new DataTable();
        dt.Columns.Add("Max", typeof(Int32));

        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = "select count(distinct mainorderno) as max from Corders ";
        SqlDataReader dr = newCmd.ExecuteReader();
        while (dr.Read())
        {
            dt.Rows.Add(dr["max"]);
        }
        if (dr.HasRows)
        {

            string strcount = dt.Rows[0]["Max"].ToString();
            Int32 norders = System.Convert.ToInt32(strcount);
            dr.Close();
            conn.Close();
            return norders;
        }
        else
        {
            dr.Close();
            conn.Close();
            return -1;
        }
    }

    public void AddReceipt(string UserName, int mainreceipno, int creceiprno, double TPrice, string pmethod)
    {
        //add Receipts to receipt table

        bool status = false;
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }



        SqlCommand newCmd2 = conn.CreateCommand();
        newCmd2.Connection = conn;
        newCmd2.CommandType = CommandType.Text;
        newCmd2.CommandText = "INSERT INTO Receipts VALUES(" + mainreceipno + ",'" + UserName + "' ,  " + creceiprno + " ," + TPrice + ", '" + pmethod + "')";
        newCmd2.ExecuteNonQuery();

        status = true;
    }

    public Int32 CountNoOfAllReceipt()
    {
        //count no of all receipts  and return it to find the  receiptrno of last order .
        DataTable dt = new DataTable();
        dt.Columns.Add("Max", typeof(Int32));

        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = "select count(distinct mainreceiprno) as maxi from Receipts";
        SqlDataReader dr = newCmd.ExecuteReader();
        while (dr.Read())
        {
            dt.Rows.Add(dr["maxi"]);
        }
        if (dr.HasRows)
        {

            string strcount = dt.Rows[0]["Max"].ToString();
            Int32 nreceipts = System.Convert.ToInt32(strcount);
            dr.Close();
            conn.Close();
            return nreceipts;
        }
        else
        {
            dr.Close();
            conn.Close();
            return -1;
        }
    }

    public Int32 CountNoReceiptsOfaCustomer(string UserName)
    {
        //count no of receipts of a customer and return it to find the customer receipt no of last receipt no of a customer.
        DataTable dt = new DataTable();
        dt.Columns.Add("count", typeof(Int32));

        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = "select count(distinct creceiprno) as counti from Receipts Where uname='" + UserName + "'";
        SqlDataReader dr = newCmd.ExecuteReader();
        while (dr.Read())
        {
            dt.Rows.Add(dr["counti"]);
        }
        if (dr.HasRows)
        {

            string strcount = dt.Rows[0]["count"].ToString();
            Int32 ncreceipts = System.Convert.ToInt32(strcount);
            dr.Close();
            conn.Close();
            return ncreceipts;
        }
        else
        {
            dr.Close();
            conn.Close();
            return -1;
        }
    }

    public DataTable getReceiptNumbersOfaUser(string UserName)
    {//get all receipt numbers of a customer
        DataTable dt = new DataTable();
        dt.Columns.Add("creceiprno", typeof(int));

        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = "select distinct creceiprno from Receipts where uname='" + UserName + "'";
        SqlDataReader dr = newCmd.ExecuteReader();
        while (dr.Read())
        {
            dt.Rows.Add(dr["creceiprno"]);
        }
        conn.Close();
        return dt;
    }

    public DataSet getDetailsofAllReceiptOfaCustomer(string UserName)
    {//get details of all Receipt of a customer
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = " select creceiprno as 'Receipt No',tprice as 'Total Price',pmethod as 'Payment Method' from Receipts where uname='" + UserName + "'order by creceiprno desc";
        SqlDataAdapter da = new SqlDataAdapter(newCmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "Receipts");
        conn.Close();
        return ds;
    }

    public DataSet getDetailsofANReceiptOfaCustomer(string UserName, int creceiprno)
    {//get details of a particular Receipt of a customer from Receipt no
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = " select creceiprno as 'Receipt No',tprice as 'Total Price',pmethod as 'Payment Method' from Receipts where uname='" + UserName + "' AND creceiprno='" + creceiprno + "' order by creceiprno desc";
        SqlDataAdapter da = new SqlDataAdapter(newCmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "Receipts");
        conn.Close();
        return ds;
    }








    // Functions by Prasad Jayashanka





    //Product Compare page........................................................................

    //bind data to product drop downlists (polymorphic function of getAllProducts() without parameters.. use other name if appropriate)


    public DataTable getAllProducts(string cat)
    {
        DataTable dt = new DataTable();
        dt.Columns.Add("pname", typeof(string));
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }

        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = "select pname from dbo.products where cname = '" + cat + "'";
        SqlDataReader dr = newCmd.ExecuteReader();
        while (dr.Read())
        {
            dt.Rows.Add(dr["pname"]);
        }
        conn.Close();
        return dt;

    }



    //get product details overloaded polymorphic function 



    public DataSet getProductDetails(string name)
    {
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = " select imageurl, pname, descrip, price from dbo.products where pname= '" + name + "'";
        SqlDataAdapter da = new SqlDataAdapter(newCmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "products");
        conn.Close();
        return ds;
    }

    //Category databind to dropdownlist

    public DataTable getAllCategories()
    {
        DataTable dt = new DataTable();
        dt.Columns.Add("cname", typeof(string));
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }

        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = "select cname from dbo.categories";
        SqlDataReader dr = newCmd.ExecuteReader();
        while (dr.Read())
        {
            dt.Rows.Add(dr["cname"]);
        }
        conn.Close();
        return dt;

    }

    //...........................................................................................


    // Admin main intro page functions..........................................................

    // get count of pending orders

    public int getPendingOrders()
    {
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = " select count(*) from dbo.Corders where dstatus = 'Not Deleivered'";

        int result = ((int)newCmd.ExecuteScalar());
        conn.Close();
        return result;
    }


    //get count of pending questions

    public int getPendingQuestions()
    {
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = " select count(*) from dbo.faq where answer = 'pending'";

        int result = ((int)newCmd.ExecuteScalar());
        conn.Close();
        return result;
    }


    //get count of pending contact us forms

    public int getPendingContacts()
    {
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = " select count(*) from dbo.contact where dstatus = 'pending'";

        int result = ((int)newCmd.ExecuteScalar());
        conn.Close();
        return result;
    }



    //......................................................................................................




    //  contact us form function


    public bool submitContact(string name, string email, string desc)
    {

        int temp = getMaxContacts() + 1;
        string no = temp.ToString();
        string dstatus = "pending";
        bool status = false;
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }

        SqlCommand newCmd2 = conn.CreateCommand();
        newCmd2.Connection = conn;
        newCmd2.CommandType = CommandType.Text;
        newCmd2.CommandText = " insert into dbo.contact values(" + temp + ",'" + name + "','" + email + "', '" + desc + "', '" + dstatus + "')";
        newCmd2.ExecuteNonQuery();
        status = true;

        return status;
    }


    // return max of contacts

    public int getMaxContacts()
    {
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = " select count(cno) from dbo.contact";

        int result = ((int)newCmd.ExecuteScalar());
        conn.Close();
        return result;
    }

    //.......................................................................................




    // Admin Add Category Function


    public bool addCategory(string catname, string caturl)
    {


        bool status = false;

        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }

        SqlCommand newCmd1 = conn.CreateCommand();
        newCmd1.Connection = conn;
        newCmd1.CommandType = CommandType.Text;
        newCmd1.CommandText = "SELECT * FROM categories WHERE cname='" + catname + "'";
        SqlDataReader dr = newCmd1.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Close();
            status = false;
        }
        else
        {
            dr.Close();
            SqlCommand newCmd2 = conn.CreateCommand();
            newCmd2.Connection = conn;
            newCmd2.CommandType = CommandType.Text;
            newCmd2.CommandText = "INSERT INTO categories VALUES('" + caturl + "' , '" + catname + "')";
            newCmd2.ExecuteNonQuery();

            status = true;
        }
        return status;
    }


    //.........................................................................


    // Admin Add Category Functions

    //DBAccess function


    public bool addProduct(string image, string image2, string catname, string proname, string prodescshort, string prodesclong, string proprice)
    {
        string proid = (getCountProducts() + 1).ToString();
        bool status = false;

        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd2 = conn.CreateCommand();
        newCmd2.Connection = conn;
        newCmd2.CommandType = CommandType.Text;
        newCmd2.CommandText = "INSERT INTO products VALUES('" + image + "' , '" + image2 + "' ,'" + catname + "', '" + proname + "', '" + proid + "', '" + prodescshort + "', '" + prodesclong + "', " + proprice + ")";
        newCmd2.ExecuteNonQuery();

        status = true;

        return status;
    }


    // count items in products

    public int getCountProducts()
    {
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = " select count(*) from dbo.products";

        int result = ((int)newCmd.ExecuteScalar());
        conn.Close();
        return result;
    }


    //......................................................................................

    // Admin FAQ Management


    // View Selected Question


    public DataSet getQuestion(string qnumber)
    {
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = " select question from dbo.faq where qno='" + qnumber + "'";
        SqlDataAdapter da = new SqlDataAdapter(newCmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "faq");
        conn.Close();
        return ds;
    }


    // Bind Question Numbers to dropdownlist

    public DataTable getAllQuestions()
    {
        DataTable dt = new DataTable();
        dt.Columns.Add("qno", typeof(string));
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = "select qno from dbo.faq where answer = 'pending'";
        SqlDataReader dr = newCmd.ExecuteReader();
        while (dr.Read())
        {
            dt.Rows.Add(dr["qno"]);
        }
        conn.Close();
        return dt;
    }


    // enter answer to question

    public bool insertAnswer(string answer, int qnumber)
    {
        bool status = false;
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }

        SqlCommand newCmd2 = conn.CreateCommand();
        newCmd2.Connection = conn;
        newCmd2.CommandType = CommandType.Text;
        newCmd2.CommandText = "update dbo.faq set answer = '" + answer + "'  where qno = " + qnumber + "";
        newCmd2.ExecuteNonQuery();
        status = true;

        return status;
    }


    //...................................................................................


    //  FAQ Page functions


    //get the maximum of question number

    public int getFaqId()
    {
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = " select count(qno) from dbo.faq";

        int result = ((int)newCmd.ExecuteScalar());
        conn.Close();
        return result;
    }


    //insert to the table

    public bool insertQuestion(int id, string username, string question)
    {
        bool status = false;
        string dstatus = "pending";
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd1 = conn.CreateCommand();
        newCmd1.Connection = conn;
        newCmd1.CommandType = CommandType.Text;
        newCmd1.CommandText = "select * from dbo.faq where qno=" + id + "";
        SqlDataReader dr = newCmd1.ExecuteReader();
        if (dr.HasRows)
        {
            status = false;
        }
        else
        {
            dr.Close();
            SqlCommand newCmd2 = conn.CreateCommand();
            newCmd2.Connection = conn;
            newCmd2.CommandType = CommandType.Text;
            newCmd2.CommandText = " insert into dbo.faq values(" + id + ",'" + username + "','" + question + "', '" + dstatus + "')";
            newCmd2.ExecuteNonQuery();
            status = true;
        }
        return status;
    }

    //.....................................................................

    // Admin manipulate products functions

    //      Product databind to dropdownlist

    public DataTable getAllProducts()
    {
        DataTable dt = new DataTable();
        dt.Columns.Add("pname", typeof(string));
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }

        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = "select pname from dbo.products";
        SqlDataReader dr = newCmd.ExecuteReader();
        while (dr.Read())
        {
            dt.Rows.Add(dr["pname"]);
        }
        conn.Close();
        return dt;

    }


    // Delete product function


    public bool deleteProduct(string product)
    {
        bool status = false;
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = "delete from dbo.products where pname ='" + product + "'";
        newCmd.ExecuteNonQuery();
        status = true;
        return status;
    }



    //update product function

    public bool updateProduct(string product, string category, string proname, string prodesclong, string prodescshort, string imageurl, string imageurl2, string proprice)
    {
        bool status = false;
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = "update dbo.products set pname = '" + proname + "', cname = '" + category + "', sdescrip = '" + prodescshort + "', descrip = '" + prodesclong + "', imageurl = '" + imageurl + "', imageurl2 = '" + imageurl2 + "', price = '" + proprice + "'    where pname = '" + product + "'";
        newCmd.ExecuteNonQuery();
        status = true;
        return status;
    }


    //..................................................................................


    // Admin Customer Management Functions

    // get activation requests

    public DataTable getAllCustRequest()
    {

        string adm = "admin";
        string active = "active";
        DataTable dt = new DataTable();
        dt.Columns.Add("username", typeof(string));
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = "select uname from dbo.requestForUserActivation";
        SqlDataReader dr = newCmd.ExecuteReader();
        while (dr.Read())
        {
            dt.Rows.Add(dr["uname"]);
        }
        conn.Close();
        return dt;
    }



    //bind data to drop down list

    public DataTable getAllCustomers()
    {

        string adm = "admin";
        string active = "activate";
        DataTable dt = new DataTable();
        dt.Columns.Add("username", typeof(string));
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = "select uname from dbo.users where uname not like '" + adm + "' and ustatus like '" + active + "'";
        SqlDataReader dr = newCmd.ExecuteReader();
        while (dr.Read())
        {
            dt.Rows.Add(dr["uname"]);
        }
        conn.Close();
        return dt;
    }

    // overloaded getAllCustomers(string name) function

    public DataSet getAllCustomers(string name)
    {

        string adm = "admin";
        string active = "active";

        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = "select uname from dbo.users where ustatus not like '" + adm + "' and uname like '" + name + "' and ustatus not like '" + active + "' ";
        SqlDataAdapter da = new SqlDataAdapter(newCmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "users");
        conn.Close();
        return ds;
    }


    //delete data from members table


    public bool deleteCustomer(string user)
    {
        bool status = false;
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = "delete from dbo.users where uname ='" + user + "'";
        newCmd.ExecuteNonQuery();
        status = true;
        return status;
    }


    // update user status to deactivated


    public bool updateUserStat(string btnval)
    {
        string deactivate = "deactivate";
        bool status = false;
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = "update dbo.users set ustatus = '" + deactivate + "' where uname = '" + btnval + "'";
        newCmd.ExecuteNonQuery();
        status = true;
        return status;
    }

    // reactivate user

    public bool reactivateUser(string name)
    {
        string active = "activate";
        bool status = false;
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = "update dbo.users set ustatus = '" + active + "' where uname = '" + name + "'";
        newCmd.ExecuteNonQuery();
        status = true;
        return status;
    }

    //delete reactivated users from activation requests table

    public bool deleteRequest(string name)
    {
        bool status = false;
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = "delete from dbo.requestForUserActivation where uname ='" + name + "'";
        newCmd.ExecuteNonQuery();
        status = true;
        return status;
    }



    //Custom Computer

    // getPrice function

    public DataTable getPrice(string product)
    {

        DataTable dt = new DataTable();
        dt.Columns.Add("price", typeof(string));
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }

        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = " select price from dbo.products where pname = '" + product + "'";

        SqlDataReader dr = newCmd.ExecuteReader();
        while (dr.Read())
        {
            dt.Rows.Add(dr["price"]);
        }
        conn.Close();
        return dt;

        //double result = ((double)newCmd.ExecuteScalar());
        //conn.Close();
        //return result;

        //string adm = "admin";
        //string active = "activate";
        //DataTable dt = new DataTable();
        //dt.Columns.Add("username", typeof(string));
        //if (conn.State.ToString() == "Closed")
        //{
        //    conn.Open();
        //}
        //SqlCommand newCmd = conn.CreateCommand();
        //newCmd.Connection = conn;
        //newCmd.CommandType = CommandType.Text;
        //newCmd.CommandText = "select uname from dbo.users where uname not like '" + adm + "' and ustatus like '" + active + "'";
        //SqlDataReader dr = newCmd.ExecuteReader();
        //while (dr.Read())
        //{
        //    dt.Rows.Add(dr["uname"]);
        //}
        //conn.Close();
        //return dt;


    }


    //..................................................................

    //Admin order management


    public bool issueOrders(int name)
    {
        string value = "Issued";
        bool status = false;
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = "update dbo.Corders set dstatus = '" + value + "' where mainorderno = " + name + "";
        newCmd.ExecuteNonQuery();
        status = true;
        return status;
    }

    //............................................................................



    //request management


    //get all requests from database

    public DataTable getAllRequests()
    {
        string pending = "pending";
        DataTable dt = new DataTable();
        dt.Columns.Add("name", typeof(string));
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = "select name from dbo.contact where dstatus = '" + pending + "'";
        SqlDataReader dr = newCmd.ExecuteReader();
        while (dr.Read())
        {
            dt.Rows.Add(dr["name"]);
        }
        conn.Close();
        return dt;
    }


    //get info for specific usename

    public DataSet getContactInfo(string name)
    {
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = " select * from dbo.contact where name = '" + name + "'";
        SqlDataAdapter da = new SqlDataAdapter(newCmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "contact");
        conn.Close();
        return ds;
    }


    //set state of contact as reviewed

    public bool updateContact(string name)
    {

        string ok = "done";
        bool status = false;
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = "update dbo.contact set dstatus = '" + ok + "' where name  = '" + name + "'";
        newCmd.ExecuteNonQuery();
        status = true;
        return status;
    }



    //........................................................................


    // delete product from cat name

    public bool deleteProductFromCat(string cat)
    {
        bool status = false;
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = "delete from dbo.products where cname ='" + cat + "'";
        newCmd.ExecuteNonQuery();
        status = true;
        return status;
    }


    //delete category


    public bool deleteCategory(string cname)
    {
        bool status = false;
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = "delete from dbo.categories where cname ='" + cname + "'";
        newCmd.ExecuteNonQuery();
        status = true;
        return status;
    }



    //..........................................................................


    //Rest of functions in Admin page

    //count of pending activation requests

    public int getPendingRequests()
    {
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = " select count(*) from dbo.requestForUserActivation";

        int result = ((int)newCmd.ExecuteScalar());
        conn.Close();
        return result;
    }


    // count of registered users

    public int getRegisteredUsers()
    {
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = " select count(*) from dbo.users";

        int result = ((int)newCmd.ExecuteScalar());
        conn.Close();
        return result;
    }


    //count numver of active members

    public int getActiveCount()
    {
        string key = "activate";
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = " select count(*) from dbo.users where ustatus = '" + key + "'";

        int result = ((int)newCmd.ExecuteScalar());
        conn.Close();
        return result;
    }

    //count total income

    public double getIncome()
    {

        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = " select sum(tprice) from dbo.Corders";

        double result = ((double)newCmd.ExecuteScalar());
        conn.Close();
        return result;
    }


    //
    public DataTable getPendingOrderList()
{

    string status = "Not Deleivered";
DataTable dt = new DataTable();
dt.Columns.Add("order", typeof(string));
if (conn.State.ToString() == "Closed")
{
conn.Open();
}
SqlCommand newCmd = conn.CreateCommand();
newCmd.Connection = conn;
newCmd.CommandType = CommandType.Text;
newCmd.CommandText = "select distinct mainorderno from dbo.Corders where dstatus = '"+status+"'";
SqlDataReader dr = newCmd.ExecuteReader();
while (dr.Read())
{
dt.Rows.Add(dr["mainorderno"]);
}
conn.Close();
return dt;
}

    public bool updatePendingOrder(int oid)
    {
        string stat = "issued";
        bool status = false;
        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }
        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = "update dbo.Corders set dstatus = '" + stat + "'  where mainorderno  = '" + oid + "'";
        newCmd.ExecuteNonQuery();
        status = true;
        return status;
    }

  

}


