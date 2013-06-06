<%@ Page Language="C#" AutoEventWireup="true" CodeFile="faq.aspx.cs" Inherits="faq" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

 <link rel="Stylesheet" type="text/css" href="Home.css" />
      <link rel="Stylesheet" type="text/css" href="AdminSheet.css" />

    <title></title>
</head>
<body>
    <form id="form1" runat="server">

    <div class="header">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
         <asp:Label ID="lblWelcome" runat="server" Font-Names="Shonar Bangla" 
             Font-Size="X-Large" ForeColor="White" Text="Welcome :"></asp:Label>
&nbsp;
         <asp:Label ID="lblUsr" runat="server" Font-Names="Shonar Bangla" 
             Font-Size="X-Large" Font-Underline="True" ForeColor="White"></asp:Label>
        </div>

          <div class="container2">
     <div id="nav">

			<a href="Home.aspx">Home</a>
			<a href="categories.aspx">Catagories</a>
			<a href="price_chart.aspx">Services</a>
            <a href="MyAccount.aspx">My Account</a>
			<a href="cart.aspx">Cart</a>
			<a href="About_us.aspx">About Us</a>
			<a class="lastchild" href="ContactUs.aspx">Contact Us</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
		</div>


    <div class="login">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnlog" runat="server" onclick="btnlog_Click" Width="112px" class="orange"/> </div>
        <br />
        <br />

         <br />
        <br />
        <br />
    
        <div id="navigation">
        <ul class="top-level">
            <li><a href="admin.aspx">Admin Panel</a></li>
            <li><a href="admin_proMgr.aspx">Product Management</a></li>
            <li><a href="admin_faq.aspx">FAQ Management</a></li>
            <li><a href="admin_CustMgr.aspx">Customer Management</a></li>
            <li><a href="admin_orderMgr.aspx">Order Management</a></li>
            <li><a href="admin_reqMgr.aspx">Request Management</a></li>
        </ul>
    </div>

    <div class="faq">
    
        <h1>Frequently Asked Questions (FAQ)</h1>
   
    <div><h5 align=left>Dear cutomers,This is the page for you to ask your questions and we are here to answer you 24 hours online... If you have any question write to us. And your question and answers will be published on the page as soon as it's answered..<br />
        <br />
        </h5></div>



    <div align=center>

    <h4 align=left>Name :&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtname" runat="server" Width="280px" Height="30px"></asp:TextBox>
        </h4>
    <br />
        <asp:TextBox ID="TextBox1" runat="server" Height="133px" Width="682px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnask" runat="server" Text="Submit Question!" Width="174px" 
            onclick="btnask_Click" class="orange" />
    &nbsp;
        <asp:Label ID="lblstat" runat="server"></asp:Label>
    </div>
    <br />
    <div align=center>
    <h3 align=left>Answered Questions....</h3>
    <br />
    <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataSourceID="SqlDataSource1" EnableModelValidation="True" 
            ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="name" HeaderText="Asked By :" 
                    SortExpression="name" />
                <asp:BoundField DataField="question" HeaderText="Question" 
                    SortExpression="question" />
                <asp:BoundField DataField="answer" HeaderText="Answer" 
                    SortExpression="answer" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ITAConnectionString %>" 
            SelectCommand="SELECT [name], [question], [answer] FROM [faq]">
        </asp:SqlDataSource>
    </div>
    </div>
    </div>
    
    <div class="footer">Copyright © 2012 Cortex System Solutions (Pvt) Ltd. All Rights Reserved.</div>
    </form>
</body>
</html>
