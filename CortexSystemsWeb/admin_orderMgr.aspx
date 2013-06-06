<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_orderMgr.aspx.cs" Inherits="admin_orderMgr" %>

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




    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <div class="login"><asp:Button ID="btnlog" runat="server" onclick="btnlog_Click" Text="Logout" 
            Width="68px" class="orange"/></div>
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


    <div class="Admin_align_6">



        <h2 align=center>Welcome&nbsp;to the Administrator Panel </h2> 
    
    <div><h3>Order Management Section<br />
        </h3></div>
    <dev><h4>Pending Orders</h4>
    <p align=center>
        <asp:DropDownList ID="ddlpending" runat="server" Height="31px" Width="372px">
        </asp:DropDownList>
    </p>
        <p align=center>
            <asp:Button ID="btnissue" runat="server" onclick="btnissue_Click" 
                Text="Issue Order" style="height: 26px" class="orange"/>
        <br />
        <br />
        <asp:Label ID="lblstat" runat="server"></asp:Label>
        <br />
        <br />
        <br />
    </p></dev>

    <dev><h3>Processed Orders<br />
    </h3>
    <p align=center>
        <asp:GridView ID="GridView2" runat="server" EnableModelValidation="True" 
            onselectedindexchanged="GridView2_SelectedIndexChanged" 
            AutoGenerateColumns="False" DataSourceID="SqlDataSource2" CellPadding="4" 
            ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="mainorderno" HeaderText="Main Order No" 
                    SortExpression="mainorderno" />
                <asp:BoundField DataField="uname" HeaderText="Username" 
                    SortExpression="uname" />
                <asp:BoundField DataField="corderno" HeaderText="Order No" 
                    SortExpression="corderno" />
                <asp:BoundField DataField="pname" HeaderText="Product" SortExpression="pname" />
                <asp:BoundField DataField="quantity" HeaderText="Quantity" 
                    SortExpression="quantity" />
                <asp:BoundField DataField="tprice" HeaderText="Price" 
                    SortExpression="tprice" />
                <asp:BoundField DataField="dstatus" HeaderText="Status" 
                    SortExpression="dstatus" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ITAConnectionString %>" 
            SelectCommand="SELECT * FROM [Corders]WHERE ([dstatus] = @two)">
            <SelectParameters>
                <asp:SessionParameter Name="two" SessionField="two" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
    </p>
    </div>
    </div>
    
    </form>
</body>
</html>
