<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">

        .style42
        {
            font-family: Arial, Helvetica, sans-serif;
            color: #FFFFFF;
        }
        </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br />
<br />


 <h1 style="text-align:center">Loging Form</h1>
    <div class="LoginIn">
   
   <div>
    <table style="width:100%; margin-left: 0px;" align="center">
        <tr>
            <td align="center" class="style11">
                &nbsp;Username</td>
            <td class="style9">
                <asp:TextBox ID="txtUserName" runat="server" Width="242px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtUserName" ErrorMessage="Enter your Username!"></asp:RequiredFieldValidator>
                </td>
            <td class="style9">
            </td>
        </tr>
        <tr>
            <td align="center" class="style12">
                Password</td>
            <td class="style8">
                <asp:TextBox ID="txtPassword" runat="server" Width="242px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtPassword" ErrorMessage="Enter your Password!"></asp:RequiredFieldValidator>
            </td>
            <td class="style8">
            </td>
        </tr>
        <tr>
            <td class="style13">
            </td>
            <td class="style10">
                <asp:Button ID="btlogin" runat="server" Text="Login" Width="84px" 
                    onclick="btlogin_Click" style="height: 26px" class="orange"/>
&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblLoginError" runat="server"></asp:Label>
            </td>
            <td class="style10">
            </td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style10">
                <a href=SignUp.aspx>New here? Click here to REGISTER now!<a />
            </td>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style10">
                <span class="style42" style="color: #0000FF">Forgot your password?
                <asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl="~/RecoverPassword.aspx">Click</asp:HyperLink>
                &nbsp;to recover your password</span></td>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style10">
                &nbsp;
                <asp:Label ID="lblLabelSendActivate" runat="server" Height="16px" 
                    Text="Your Account has been deactivated" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblLabelSendActivate0" runat="server" Height="16px" 
                    Text="Contact Admin to activate your account" Visible="False"></asp:Label>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnRequestActivate" runat="server" onclick="Button1_Click" 
                    Text="Contact" Visible="False" class="orange"/>
            </td>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style10">
                <asp:Label ID="lblLabelSendActivate1" runat="server" Height="16px" 
                    style="margin-bottom: 0px" 
                    Text="Please wait. Request send to Admin to activate your account." 
                    Visible="False"></asp:Label>
            </td>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
        </tr>
    </table>
    </div>
    </div>

</asp:Content>

