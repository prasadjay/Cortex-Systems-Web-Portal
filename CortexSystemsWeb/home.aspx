<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="Home" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <head>
<link rel="Stylesheet" type="text/css" href="Slider.css" />
<script src="jquery-1.7.1.min.js" type="text/javascript"></script>
<script src="jquery.nivo.slider.pack.js" type="text/javascript"></script>
</head>


&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
 <div class="login"><asp:Button ID="btnlog" runat="server" onclick="btnlog_Click" 
    Width="85px"  class="orange"/></div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div class="login1">
<asp:Button ID="btnAdmin" runat="server" onclick="btnAdmin_Click" Text="Admin  Page" 
        Visible="False" class="orange"/></div>
   




<script type="text/javascript">
    $(window).load(function () {
        $('#slider').nivoSlider();
        $('.nivo-controlNav').hide();
    });
</script>  

<br />        
       
   <div class="news" ><h2>Latest News...</h2>
   <p>Apple iMac 2012 released!With all new 3rd generation Ivy bridge core i5 and i7 and fastest Nvidia class 600 graphics chips, iMac is ready to hit the consumer market. With preinstalled Mac OS X Lion you can accomplish your tasks easily. And ships with both wireless touch magic mouse and wireless mini keyboard. Price staring at Rs.179,000.</p>
   <hr />
   <p>EVGA GTX690 Coming soon!GTX 690 is currently the best GPU in the world in terms of the performance and quality. With two GPU cores intergrated in to a single card it's more power efficient and a space saver making SLI is not required. With SLI GTX680 performs as a quad SLI setup.</p>
   <hr />
   <p>the flagship brands sold through Cortex System Solutions covers from mouse to cutting edge 
   gaming rigs. Apart from the above brands,Cortex System Solutions markets several </p>
   <hr />
   <p>brands in IT for home and small offices with a commitment to best and fastest service. Intel, EVGA, Samsung, KINGSTON</p>
   <hr />
   <p>Cortex System Solutions PVT Ltd. was founded in August 2009. The Cortex System Solutions carries the best
   brands in IT for home and small offices with a commitment</p>
 
   </div>  
   <div id="slider" class="nivoSlider">

        <img src="sliderImages/1.jpg" alt="" />
        <img src="sliderImages/2.jpg" alt="" />
        <img src="sliderImages/3.jpg" alt="" />
        <img src="sliderImages/4.jpg" alt="" />
        <img src="sliderImages/5.jpg" alt="" />
        <img src="sliderImages/6.jpg" alt="" />
        <img src="sliderImages/7.jpg" alt="" />
        <img src="sliderImages/8.jpg" alt="" />
        <img src="sliderImages/9.jpg" alt="" />
        <img src="sliderImages/10.jpg" alt="" />
        <img src="sliderImages/11.jpg" alt="" />
        <img src="sliderImages/12.jpg" alt="" />
        <img src="sliderImages/13.jpg" alt="" />
        <img src="sliderImages/14.jpg" alt="" />
        <img src="sliderImages/15.jpg" alt="" />
        <img src="sliderImages/16.jpg" alt="" />
        <img src="sliderImages/17.jpg" alt="" />

     
    </div>


      <br />
  <div class="rounded-corners">
  
  Cortex System Solutions PVT Ltd. was founded in August 2009. The Cortex System Solutions carries the best
   brands in IT for home and small offices with a commitment to best and fastest service. Intel, EVGA, Samsung
   &amp; KINGSTON, the flagship brands sold through Cortex System Solutions covers from mouse to cutting edge 
   gaming rigs. Apart from the above brands,Cortex System Solutions markets several third party IT peripherals such as speakers, wireless broadband products, memory 
         storage devices to name a few.Another area under consideration for expansion 
         is of the product portfolio with more entertainment related brands and gaming 
         accessories.With an ambitious and a steady plan to reach to most households in 
         Sri Lanka, Cortex System Solutions wishes expand gradually to cover all the main cities in Sri 
         Lanka. <br /><br />
   
  </div>

   <div class="rounded-corners2">
  
  <img src="images/new photo1.PNG" alt=""/>
  
  </div>
   <div class="rounded-corners2">
  
  <img src="images/new photo2.PNG" alt=""/>
  
  </div>

</asp:Content>


