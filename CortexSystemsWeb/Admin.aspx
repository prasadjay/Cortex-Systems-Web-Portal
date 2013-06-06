<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <head>
<link rel="Stylesheet" type="text/css" href="AdminSheet.css" />
</head>



   
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        <div class="login"><asp:Button ID="btnlog" runat="server" onclick="btnlog_Click" Width="85px"  
            class="orange" Text="LogOut" /></div>
        

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

    <div class="Admin_align">

        <div align=center><h2 align='center'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        Welcome&nbsp;to the Administrator Panel </h2>    </div>
        <div align=center>
<br />
<h4>Portal Overview</h4>
<br />
<br />
Total Pages :&nbsp; 36<br />
            <br />
            Total Sales&nbsp; :&nbsp; Rs.<asp:Label ID="lblincome" runat="server"></asp:Label>
            <br />
<br />
Pending Account Activation Requests :&nbsp;
    <asp:Label ID="lblreq" runat="server"></asp:Label>
    <br />
    &nbsp;<br />
    Pending Orders :&nbsp;&nbsp; 
    <asp:Label ID="lblpendingorders" runat="server"></asp:Label>
    <br />
    <br />
    Pending Questions :&nbsp;
    <asp:Label ID="lblpendingquestions" runat="server"></asp:Label>
    <br />
    <br />
    Pending Contact Us requests :&nbsp;
    <asp:Label ID="lblpendingcontacts" runat="server"></asp:Label>
    <br />
    <br />
    Total Registered Users :&nbsp; 
            <asp:Label ID="lbltotalusers" runat="server"></asp:Label>
            <br />
            <br />
            Total Active Users&nbsp; :&nbsp;
            <asp:Label ID="lblactiveusers" runat="server"></asp:Label>
            <br />
            <br />
            Total Deactivated Users&nbsp; :&nbsp;
            <asp:Label ID="lbldeact" runat="server"></asp:Label>
    <br />
    <br />
    <br />
    
    <br /><asp:Button ID="btnrefresh" runat="server" Text="Refresh Feed" Width="128px" 
        onclick="btnrefresh_Click" style="height: 26px" class="orange"/>
<br />

</div>

    </div>


</asp:Content>

