<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:Label ID="Label1" runat="server" Text="Bonus Points ="></asp:Label>
&nbsp;&nbsp;
        <asp:Label ID="lblBpoints" runat="server"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div class="login"><asp:Button ID="btnlog" runat="server" onclick="btnlog_Click" 
    Width="68px" class="orange" /></div>


    </p>
    <p style="text-align:center">
        Select Your Payement Method</p>
    <p align=center>
        <asp:Button ID="btCard" runat="server" Text="Card" Height="26px" 
            Width="102px" onclick="btCard_Click" Enabled="False" class="orange"/>
    </p>
    <p align=center>
        <asp:Button ID="btnpoints" runat="server" Text="BonusPoints" Width="102px" 
            Enabled="False" onclick="btnpoints_Click"/>
    </p>
    <p align=center>
        <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
&nbsp;</p>
    <p align=center>
        <asp:Button ID="btnHome" runat="server" onclick="btnHome_Click" Text="Home" 
            Visible="False" class="orange" />
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="uname,pname" DataSourceID="SqlDataSource1" 
            EnableModelValidation="True" Height="29px" Visible="False" Width="16px" 
            CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="uname" HeaderText="Username" ReadOnly="True" 
                    SortExpression="uname" />
                <asp:BoundField DataField="pname" HeaderText="Product" ReadOnly="True" 
                    SortExpression="pname" />
                <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
                <asp:BoundField DataField="quantity" HeaderText="Quantity" 
                    SortExpression="quantity" />
                <asp:BoundField DataField="imageurl" HeaderText="imageurl" 
                    SortExpression="imageurl" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ITAConnectionString(CART) %>" 
            SelectCommand="SELECT [uname], [imageurl], [pname], [price], [quantity] FROM [cart]Where([uname] = @username)">
            <SelectParameters>
                <asp:SessionParameter Name="username" SessionField="user" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
    </p>
</asp:Content>

