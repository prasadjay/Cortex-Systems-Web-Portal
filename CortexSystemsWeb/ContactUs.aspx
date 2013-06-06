<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="Contact_Us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <head>
<link rel="Stylesheet" type="text/css" href="StyleSheet.css" />
</head>



 <div>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
    <div class="login"><asp:Button ID="btnlog" runat="server" onclick="btnlog_Click" Width="85px"  class="orange" /></div>
   <br />
   <div class="contact_us"><br />
    <table style="width:400px; margin-right: 0px;">
     
        <tr>
            <td class="style12">
                Where are we :</td>
            <td>
                </td>
        </tr>
        <tr>
            <td class="style13">
                Address&nbsp;:</td>
            <td class="style14">
                <span class="style16">No : 55,</span><br class="style16" />
                <span class="style16">Union Place,</span><br class="style16" />
                <span class="style16">Colombo.</span></td>
        </tr>
        <tr>
            <td class="style17">
                Telephone&nbsp;:</td>
            <td class="style16">
                0112532852</td>
        </tr>
        <tr>
            <td class="style17">
                Fax&nbsp;:</td>
            <td class="style16">
                0112532478</td>
        </tr>
        <tr>
            <td class="style13">
                Email :</td>
            <td class="style18">
                info@cortexsystems.com</td>
        </tr>
    </table>
   
    </div>


      <br />
    <hr />
    <br />
    
   <div class="contact_us">
  
   <div>



 
    
 
     </div>

    <div>

    <div class="rounded-corners-new-new">
<table style="width:100%;">
        <tr>
            <td class="style9" 
                style="font-family: 'Lucida Grande'; font-size: large; font-weight: bold;">
                Name</td>
            <td class="style11">
                <asp:TextBox ID="txtbxContactName" runat="server" Width="253px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style15" style="font-weight: bold; font-size: large">
                Email</td>
            <td class="style8">
                <asp:TextBox ID="txtbxContactMail" runat="server" style="margin-top: 0px" 
                    Width="253px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style15" style="font-size: large; font-weight: bold">
                Description</td>
            <td>
                <asp:TextBox ID="txtbxContactDesc" runat="server" Height="152px" Width="431px" 
                    TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style10">
                <asp:Label ID="lblerror" runat="server"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;</td>
           <td>
           

             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Button ID="btnContactSubmit" runat="server" Text="Submit" 
                   onclick="btnContactSubmit_Click" class="orange" Width="80px" Height="28px" />
           

             </td>
        </tr>
    </table>
    </div>
    
    </div>
    </div>
    </div>
    








</asp:Content>

