<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

 <style type="text/css">
        .style8
        {
            width: 372px;
        }
        .style9
        {
            width: 584px;
        }
        .style11
        {
            width: 584px;
            height: 52px;
        }
        .style13
        {
            width: 302px;
        }
        .style14
        {
            width: 279px;
        }
        .style17
        {
            width: 372px;
            height: 45px;
        }
        .style18
        {
            width: 279px;
            height: 45px;
        }
        .style19
        {
            width: 302px;
            height: 45px;
        }
        .style20
        {
            height: 45px;
        }
        .style21
        {
            width: 372px;
            height: 42px;
        }
        .style22
        {
            width: 279px;
            height: 42px;
        }
        .style23
        {
            width: 302px;
            height: 42px;
        }
        .style24
        {
            height: 42px;
        }
        .style25
        {
            width: 372px;
            height: 40px;
        }
        .style26
        {
            width: 279px;
            height: 40px;
        }
        .style27
        {
            width: 302px;
            height: 40px;
        }
        .style28
        {
            height: 40px;
        }
        .style29
        {
            width: 372px;
            height: 41px;
        }
        .style30
        {
            width: 279px;
            height: 41px;
        }
        .style31
        {
            width: 302px;
            height: 41px;
        }
        .style32
        {
            height: 41px;
        }
        .style33
        {
            width: 372px;
            height: 52px;
        }
        .style34
        {
            height: 52px;
        margin-left: 360px;
    }
        .style35
        {
            height: 42px;
            width: 166px;
        }
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<br />
<br />
<br />
<br />

 <div>
 <h1 style="text-align:center">Welcome New User !</h1><br />
 <div class="SignUPcss">
    <table style="width:100%;">
        
        <tr>
            <td class="style17">
            </td>
            <td class="style18">
                First Name</td>
            <td class="style19">
                <asp:TextBox ID="txtregFname" runat="server" Width="232px"></asp:TextBox>
            </td>
            <td class="style20" colspan="2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtregFname" ErrorMessage="Please enter your first name!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style21">
            </td>
            <td class="style22">
                Last Name</td>
            <td class="style23">
                <asp:TextBox ID="txtregLname" runat="server" Width="233px"></asp:TextBox>
            </td>
            <td class="style24" colspan="2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtregLname" ErrorMessage="Please enter your last name!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style25">
            </td>
            <td class="style26">
                Username</td>
            <td class="style27">
                <asp:TextBox ID="txtregUsrnme" runat="server" Width="233px"></asp:TextBox>
            </td>
            <td class="style28" colspan="2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtregUsrnme" ErrorMessage="Please enter your Username!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style21">
            </td>
            <td class="style22">
                Password</td>
            <td class="style23">
                <asp:TextBox ID="txtregPswrd" runat="server" Width="234px" TextMode="Password"></asp:TextBox>
            </td>
            <td class="style35">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtregPswrd" ErrorMessage="Enter a Password!"></asp:RequiredFieldValidator>
            </td>
            <td class="style24">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style29">
            </td>
            <td class="style30">
                Confirm Password</td>
            <td class="style31">
                <asp:TextBox ID="txtregPswrdCnfrm" runat="server" Width="233px" 
                    TextMode="Password"></asp:TextBox>
            </td>
            <td class="style32">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtregPswrdCnfrm" ErrorMessage="Confirm Password!"></asp:RequiredFieldValidator>
            </td>
            <td class="style32">
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtregPswrd" ControlToValidate="txtregPswrdCnfrm" 
                    ErrorMessage="Passwords Don't Match!"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style21">
            </td>
            <td class="style22">
                Address</td>
            <td class="style23">
                <asp:TextBox ID="txtregAddress" runat="server" Width="233px" Height="160px" 
                    TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="style24" colspan="2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtregAddress" ErrorMessage="Enter your address!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style29">
            </td>
            <td class="style30">
                Email</td>
            <td class="style31">
                <asp:TextBox ID="txtregEmail" runat="server" Width="233px"></asp:TextBox>
            </td>
            <td class="style32">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtregEmail" ErrorMessage="Enter your Email!"></asp:RequiredFieldValidator>
            </td>
            <td class="style32">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtregEmail" ErrorMessage="Wrong Email Entered!" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style14">
                Sequrity question</td>
            <td class="style13">
                <asp:TextBox ID="txtsequrityq" runat="server" Width="233px" BackColor="White" 
                    Height="80px" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td colspan="2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtsequrityq" 
                    ErrorMessage="Please enter a sequrity question!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9" colspan="2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style14">
                Sequrity answer</td>
            <td class="style13">
                <asp:TextBox ID="txtanswer" runat="server" Width="233px"></asp:TextBox>
            </td>
            <td colspan="2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="txtanswer" ErrorMessage="Please enter an answer !"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9" colspan="2">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnReg" runat="server" Text="Register" Width="138px" 
                    onclick="btnReg_Click" class="orange"/>
            </td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblerror" runat="server" Font-Size="Medium"></asp:Label>
            </td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9" colspan="2">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
    </table>
    </div>
    </div>



</asp:Content>

