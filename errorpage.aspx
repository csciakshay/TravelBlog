<%@ Page Title="" Language="VB" MasterPageFile="~/mainmaster.master" AutoEventWireup="false" CodeFile="errorpage.aspx.vb" Inherits="errorpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_1.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-start">
          <div class="col-md-9 ftco-animate pb-4">
            <h1 class="mb-3 bread">APPOINTMENT_MASTER</h1>
             <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>APPOINTMENT_MASTER <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
        </div>
      </div>
    </section>

     <section class="ftco-counter img ftco-section ftco-no-pt ftco-no-pb">
    	<div class="container">   
            
             <div class ="row">
                 <div class ="col-md-2">
                     </div>
                 <div class ="col-md-8">
                     <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                     </div>
                 <div class ="col-md-2">
                     </div>
                 </div>
            </div>
         </section>
</asp:Content>

