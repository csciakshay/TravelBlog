<%@ Page Title="" Language="VB" MasterPageFile="~/mainmaster.master" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_1.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-start">
          <div class="col-md-9 ftco-animate pb-4">
            <h1 class="mb-3 bread">LOGIN</h1>
             <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>LOGIN <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
        </div>
      </div>
    </section>

     <section class="ftco-counter img ftco-section ftco-no-pt ftco-no-pb">
    	<div class="container">   


            <div class ="row d-flex">
                <div class ="col-md-4">
                   
                </div>
                <div class ="col-md-4">
                    <asp:Label ID="Label2" runat="server" Text="ID"  ></asp:Label>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Id" DataValueField="Id" Width="261px"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id] FROM [registration]"></asp:SqlDataSource>
                </div>
                <div class ="col-md-4">
                   
                </div>
            </div>
            <br />


          
            <div class ="row d-flex">
                <div class ="col-md-4">
                   
                </div>
                <div class ="col-md-4">
                    <asp:Label ID="Label1" runat="server" Text="PASSWORD"  ></asp:Label>
                    <asp:TextBox ID="txtpass" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                </div>
                <div class ="col-md-4">
                   
                </div>
            </div>
            <br />


            <div class ="row d-flex">
                 <div class ="col-md-4">

                 </div>
                 <div class ="col-md-3">
                     <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/registration.aspx">FORGOT PASSWORD</asp:HyperLink>
                 </div>
                 <div class ="col-md-1">
                     <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/registration.aspx">REGISTRATION</asp:HyperLink>
                 </div>
                 <div class ="col-md-4">

                 </div>
            </div>
            
            <div class ="row d-flex">
                <div class ="col-md-4">
                   
                </div>
                <div class ="col-md-4">
                   <asp:Button ID="loginbtn" runat="server" Text="LOGIN" class="btn btn-secondary py-3 px-4"/>
                </div>
                <div class ="col-md-4">
                   
                </div>
            </div>
            <br />


        </div>       
     </section>
</asp:Content>

