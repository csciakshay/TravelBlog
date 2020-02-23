<%@ Page Title="" Language="VB" MasterPageFile="~/mainmaster.master" AutoEventWireup="false" CodeFile="test_master.aspx.vb" Inherits="test_master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

        <link rel="stylesheet" type="text/css" href="/datepiker/css/foopicker.css">
  <script type="text/javascript" src="/datepiker/js/foopicker.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_1.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-start">
          <div class="col-md-9 ftco-animate pb-4">
            <h1 class="mb-3 bread">ADMMITE_MASTER</h1>
             <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>DIEASES_MASTER <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-counter img ftco-section ftco-no-pt ftco-no-pb">
    	<div class="container">   
            
             <div class ="row d-flex">
                 <div class ="col-md-4">
                     <asp:Label ID="Label1" runat="server" Text="TEST_ID"></asp:Label>
                     <asp:TextBox ID="txttestid" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txttestid" ForeColor="Red"></asp:RequiredFieldValidator>
                
                 </div>
                
                 <div class ="col-md-4">
                     <asp:Label ID="Label3" runat="server" Text="TEST_TYPE"></asp:Label>
                     <asp:TextBox ID="txttesttype" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txttesttype" ForeColor="Red"></asp:RequiredFieldValidator>
                 
                 </div>

             </div>

              <div class ="row d-flex">
                  <div class ="col-md-4">
                      <asp:Label ID="Label4" runat="server" Text="TEST_DATE"></asp:Label>
                      <asp:TextBox ID="txttestdate" runat="server" class="form-control" ReadOnly="True" ClientIDMode="Static"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="txttestdate" ForeColor="Red"></asp:RequiredFieldValidator>
                 
                  </div>
                  <div class ="col-md-4">
                       <asp:Label ID="Label5" runat="server" Text="TEST_TIME"></asp:Label>
                      <asp:TextBox ID="txttesttime" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="txttesttime" ForeColor="Red"></asp:RequiredFieldValidator>
                 
                  </div>
                  <div class ="col-md-4">
                  </div>
              </div>
              </br>
              <div class ="row d-flex">
                    <div class ="col-md-4">
                    </div>
                    <div class ="col-md-4">
                        <asp:Button ID="Button1" runat="server" Text="Submit"  class="btn btn-secondary py-3 px-4"/>
                    </div>
                    <div class ="col-md-4">
                    </div>
              
              
              
              </div>
                          

        </div>
    </section>

      <script type="text/javascript">
          var foopicker = new FooPicker({
              id: 'txttestdate',
              dateFormat: 'dd/MM/yyyy'

          });

  </script>
</asp:Content>

