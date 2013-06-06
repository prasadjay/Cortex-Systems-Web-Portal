<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RecoverPassword.aspx.cs" Inherits="RecoverPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">


    <style type="text/css">
    .style8
    {
            width: 266px;
            text-align: center;
        }
    .style9
    {
        width: 204px;
    }
</style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <div><br /><br />

    <h1 style="text-align:center">Recover Password !</h1>
&nbsp;
    <br />
&nbsp;&nbsp;
    <div class="RecoverPassword">
    <table style="width: 100%;">
        <tr>
            <td class="style8">
                User name</td>
            <td class="style9">
                <asp:TextBox ID="txtUserName" runat="server" Width="168px"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lblEmptyUsernameError" runat="server" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9">
                <asp:Button ID="btnRecover" runat="server" onclick="btnRecover_Click" 
                    Text="Recover" style="width: 68px" class="orange"/>
            </td>
            <td>
                <asp:Label ID="lblWrongUserNameError" runat="server" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                <asp:Label ID="lblQuestionlabel" runat="server" Text="Sequrity Question" 
                    Visible="False"></asp:Label>
            </td>
            <td class="style9">
                <asp:Label ID="lblQuestion" runat="server" Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                <asp:Label ID="lblAnswerlabel" runat="server" Text="Enter Answer" 
                    Visible="False"></asp:Label>
            </td>
            <td class="style9">
                <asp:TextBox ID="txtanswer" runat="server" Visible="False" Width="168px"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lblEmptyAnswerError" runat="server" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9">
                <asp:Button ID="btnsubmit" runat="server" onclick="btnsubmit_Click" 
                    Text="Submit" Visible="False" Width="68px" class="orange"/>
            </td>
            <td>
                <asp:Label ID="lblWrongAnswerError" runat="server" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                <asp:Label ID="lblNewPasswordlabel" runat="server" Text="Enter New Password" 
                    Visible="False"></asp:Label>
            </td>
            <td class="style9">
                <asp:TextBox ID="txtpassword" runat="server" Visible="False" Width="168px" 
                    TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lblEmptyPasswordError" runat="server" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9">
                <asp:Button ID="btnChange" runat="server" onclick="btnChange_Click" 
                    Text="Change" Visible="False" Width="68px" class="orange"/>
            </td>
            <td>
                <asp:Label ID="lblPasswordChangeStatus" runat="server" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
</div>
</div>
    <p>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
&nbsp;</p>
    <p>
    </p>
    <p>
    </p>




</asp:Content>

