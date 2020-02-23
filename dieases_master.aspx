<%@ Page Title="" Language="VB" MasterPageFile="~/mainmaster.master" AutoEventWireup="false" CodeFile="dieases_master.aspx.vb" Inherits="dieases_master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_1.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-start">
          <div class="col-md-9 ftco-animate pb-4">
            <h1 class="mb-3 bread">DIEASES_MASTER</h1>
             <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>DIEASES_MASTER <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
        </div>
      </div>
    </section>

     <section class="ftco-counter img ftco-section ftco-no-pt ftco-no-pb">
    	<div class="container">   
            
             <div class ="row d-flex">
                 <div class ="col-md-6">
                     <asp:Label ID="Label1" runat="server" Text="DIEASES_ID"></asp:Label>
                     <asp:TextBox ID="txtdieid" runat="server" class="form-control"></asp:TextBox>

                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtdieid" ForeColor="Red"></asp:RequiredFieldValidator>
                 </div>

                  <div class ="col-md-6">
                      <asp:Label ID="Label2" runat="server" Text="DIEASES_DESCRIPTION"></asp:Label>
                      <asp:TextBox ID="txtdiedes" runat="server" class="form-control"></asp:TextBox>

                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtdiedes" ForeColor="Red"></asp:RequiredFieldValidator>
                  </div>
            </div>
             </br>
             <div class ="row d-flex">
                 <div class ="col-md-4">

                  </div>

                 <div class ="col-md-4">
                     <asp:Button ID="btnsubmit" runat="server" Text="SUBMIT" class="btn btn-secondary py-3 px-4" />
                     <asp:Button ID="btnupdate" runat="server" Text="UPDATE"   class="btn btn-secondary py-3 px-4"/> 
                 
                 </div>

                 <div class ="col-md-4">

                  </div>
              </div>     
          </div>
            
     </section>

</asp:Content>

