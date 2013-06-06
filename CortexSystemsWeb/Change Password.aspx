<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Change Password.aspx.cs" Inherits="Change_Password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link rel="Stylesheet" type="text/css" href="AdminSheet.css" />

    <style type="text/css">
        .style12
        {
            width: 157px;
        }
        .style15
        {
            width: 114px;
        }
        .style16
        {
            width: 145px;
        }
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


   
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
     <div class="login"><asp:Button ID="btnlog" runat="server" onclick="btnlog_Click" Width="85px"  class="orange"/></div>



    
    <div id="navigation">
        <ul class="top-level">
            <li><a href="MyAccount.aspx">My Account</a></li>
            <li><a href="UpdateAccountInfo.aspx">Update</a></li>
            <li><a href="Change Password.aspx">Change Password</a></li>
            <li><a href="OrdersOfACustomer.aspx">My Orders</a></li>
            <li><a href="Customer Receipts.aspx">My Recepits</a></li>
        </ul>
 </div>

    

     <div class="MyAccount2">
      <h1 style="text-align:center">Change Password !</h1>
    <p>

        <table style="width: 79%; margin-left: 201px;">
            <tr>
                <td class="style12">
                    <asp:Label ID="Label1" runat="server" Text="Old Password"></asp:Label>
                </td>
                <td class="style16">
                    <asp:TextBox ID="txtCurentPassword" runat="server" style="margin-left: 0px" 
                        TextMode="Password" Width="160px"></asp:TextBox>
                </td>
                <td class="style15">
                    <asp:Label ID="lblOpasswordEmptyError" runat="server" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblOpasswordWrongError" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style12">
                    &nbsp;</td>
                <td class="style16">
                    <asp:Button ID="btnConfirm" runat="server" onclick="btnConfirm_Click" 
                        Text="Confirm" class="orange"/>
                </td>
                <td class="style15">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style12">
                    &nbsp;</td>
                <td class="style16">
                    &nbsp;</td>
                <td class="style15">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style12">
                    <asp:Label ID="lblLabelNpassword" runat="server" Text="New Password" 
                        Visible="False"></asp:Label>
                </td>
                <td class="style16">
                    <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password" 
                        Visible="False" Width="160px"></asp:TextBox>
                </td>
                <td class="style15">
                    <asp:Label ID="lblNpasswordEmptyError" runat="server" Visible="False"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style12">
                    <asp:Label ID="lblLabelCNpassword" runat="server" Text="Confirm New Password" 
                        Visible="False"></asp:Label>
                </td>
                <td class="style16">
                    <asp:TextBox ID="txtConfirmNewPassword" runat="server" TextMode="Password" 
                        Visible="False" Width="160px"></asp:TextBox>
                </td>
                <td class="style15">
                    <asp:Label ID="lblCNpasswordEmptyError" runat="server" Visible="False"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style12">
                    &nbsp;</td>
                <td class="style16">
                    <asp:Button ID="btnChange" runat="server" onclick="btnChange_Click" 
                        Text="Change" Visible="False" class="orange" />
                </td>
                <td class="style15">
                    <asp:Label ID="lblComparepasswordWrongError" runat="server" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblResult" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
    </p>
    <div>
    </div>
    </div>


</asp:Content>

