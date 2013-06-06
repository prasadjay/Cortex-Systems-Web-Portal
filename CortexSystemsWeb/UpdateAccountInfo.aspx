<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UpdateAccountInfo.aspx.cs" Inherits="UpdateAccountInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="Stylesheet" type="text/css" href="AdminSheet.css" />

    <style type="text/css">

        .style11
        {
            height: 52px;
        }
        .style19
        {
            width: 208px;
            height: 45px;
        }
        .style20
        {
            height: 45px;
        }
        .style23
        {
         width: 208px;
         height: 42px;
     }
        .style24
        {
            height: 42px;
        }
        .style32
        {
            height: 41px;
        }
        .style9
        {
        }
        .style36
    {
        height: 41px;
        width: 213px;
    }
    .style37
    {
         width: 208px;
     }
     .style44
     {
         height: 41px;
         width: 208px;
     }
     .style45
     {
         width: 326px;
         height: 45px;
         text-align:center;
     }
     .style46
     {
         width: 326px;
         height: 42px;
         text-align:center;
     }
     .style47
     {
         width: 326px;
         height: 41px;
         text-align:center;
     }
     .style48
     {
         width: 326px;
         text-align:center;
     }
        .style50
        {
            width: 326px;
            height: 28px;
            text-align:center;
        }
        .style51
        {
            width: 208px;
            height: 28px;
        }
        .style52
        {
            height: 28px;
        }
 </style>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div>
    <div>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <div class="login"><asp:Button ID="btnlog" runat="server" onclick="btnlog_Click" Width="85px" class="orange"/></div>
    </div>
    <div>

     <div id="navigation">
        <ul class="top-level">
            <li><a href="MyAccount.aspx">My Account</a></li>
            <li><a href="UpdateAccountInfo.aspx">Update</a></li>
            <li><a href="Change Password.aspx">Change Password</a></li>
            <li><a href="OrdersOfACustomer.aspx">My Orders</a></li>
            <li><a href="Customer Receipts.aspx">My Recepits</a></li>
        </ul>
 </div>
    
    </div>
    <div class="MyAccount1">
    <table style="width:100%;">
        <tr>
            <td class="style11" colspan="4" 
                style="font-size: large; font-weight: bold">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Update Information</td>
        </tr>
        <tr>
            <td class="style45">
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
            <td class="style46">
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
            <td class="style46">
                Address</td>
            <td class="style23">
                <asp:TextBox ID="txtregAddress" runat="server" Width="233px"></asp:TextBox>
            </td>
            <td class="style24" colspan="2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtregAddress" ErrorMessage="Enter your address!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style47">
                Email</td>
            <td class="style44">
                <asp:TextBox ID="txtregEmail" runat="server" Width="233px"></asp:TextBox>
            </td>
            <td class="style36">
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
            <td class="style9" colspan="2">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnUpdate" runat="server" Text="Update" Width="138px" 
                    onclick="btnReg_Click" class="orange"/>
            &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblerror" runat="server" Font-Size="Medium"></asp:Label>
            </td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                </td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9" colspan="4" style="font-size: large; font-weight: bold;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 
                Change Security Question<br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style50">
                Enter Your Password to change security question</td>
            <td class="style51">
                <asp:TextBox ID="txtpassword" runat="server" Width="232px" TextMode="Password"></asp:TextBox>
            </td>
            <td colspan="2" class="style52">
                <asp:Button ID="btConfirm" runat="server" onclick="btConfirm_Click" 
                    Text="Confirm" class="orange"/>
            </td>
        </tr>
        <tr>
            <td class="style48">
                &nbsp;</td>
            <td class="style37">
                <asp:Label ID="lblerrorPassword" runat="server"></asp:Label>
            </td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9" colspan="2">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style48">
                <asp:Label ID="lblquestion" runat="server" Text="Enter New Sequrity question" 
                    Visible="False"></asp:Label>
            </td>
            <td class="style37">
                <asp:TextBox ID="txtnewQuestion" runat="server" Width="232px" Visible="False" 
                    Height="61px" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td colspan="2">
                <asp:Label ID="lblerrorquestion" runat="server" Font-Size="Medium"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style48">
                <asp:Label ID="lblanswer" runat="server" Text="Enter Answer" Visible="False"></asp:Label>
            </td>
            <td class="style37">
                <asp:TextBox ID="txtnewAnswer" runat="server" Width="232px" Visible="False"></asp:TextBox>
            </td>
            <td colspan="2">
                <asp:Label ID="lblErroranswer" runat="server" Font-Size="Medium"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style48">
                &nbsp;</td>
            <td class="style37">
                <asp:Button ID="btModify" runat="server" onclick="btModify_Click" Text="Modify" 
                    Visible="False" class="orange"/>
            </td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9" colspan="2">
                <asp:Label ID="lblmessage" runat="server" Visible="False"></asp:Label>
            </td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9" colspan="2">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style48">
                &nbsp;</td>
            <td class="style37">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
    </table>
</div>
</div>



</asp:Content>

