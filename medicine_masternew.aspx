<%@ Page Title="" Language="VB" MasterPageFile="~/mainmaster.master" AutoEventWireup="false" CodeFile="medicine_masternew.aspx.vb" Inherits="medicine_masternew" %>

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
            <h1 class="mb-3 bread">MEDICINE_MASTER</h1>
             <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>MEDICINE0_MASTER <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-counter img ftco-section ftco-no-pt ftco-no-pb">
    	<div class="container">   
            
             <div class ="row d-flex">
                 <div class ="col-md-4">
                     <asp:Label ID="Label1" runat="server" Text="MEDICINEID"></asp:Label>
                     <asp:TextBox ID="txtmedicineid" runat="server" class="form-control"></asp:TextBox>
                   
                 </div>
                 <div class ="col-md-4">
                     <asp:Label ID="Label3" runat="server" Text="MEDICINE_QUANTITY"></asp:Label>
                     <asp:TextBox ID="txtmedicinequa" runat="server" class="form-control"></asp:TextBox>   
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtmedicinequa" ForeColor="Red"></asp:RequiredFieldValidator>
                     
                  </div> 

                  <div class ="col-md-4">
                      <asp:Label ID="Label2" runat="server" Text="MEDICINE_TYPE"></asp:Label>
                      <asp:TextBox ID="txtmeditype" runat="server" class="form-control"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtmeditype" ForeColor="Red"></asp:RequiredFieldValidator>
                      
                  </div>
            </div>
             </br>
             <div class ="row d-flex">
                 <div class ="col-md-4">
                      <asp:Label ID="Label4" runat="server" Text="MEDICINE_EXP_DATE"></asp:Label>
                      <asp:TextBox ID="txtexdate" runat="server" class="form-control" ClientIDMode="Static"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txtexdate" ForeColor="Red"></asp:RequiredFieldValidator>
                 
                 </div>

                 <div class ="col-md-4">
                     <asp:Label ID="Label5" runat="server" Text="MEDICINE_UNIT"></asp:Label>
                      <asp:TextBox ID="txtunit" runat="server" class="form-control"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="txtunit" ForeColor="Red"></asp:RequiredFieldValidator>
                     
                 </div>

                 <div class ="col-md-4">
                      <asp:Label ID="Label6" runat="server" Text="MEDICINE_COMPANY_NAME"></asp:Label>
                      <asp:TextBox ID="txtmedicompanyname" runat="server" class="form-control"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="txtmedicompanyname" ForeColor="Red"></asp:RequiredFieldValidator>
                 
                 </div>
              </div>     
            </br>

            <div class ="row d-flex">
                 <div class ="col-md-4">

                 </div>
                 <div class ="col-md-4">
                     <asp:Button ID="Button1" runat="server" Text="SUBMIT"  class="btn btn-secondary py-3 px-4"/>
                 </div>
                <div class ="col-md-4">

                 </div>
            </div> 

          </div>
            

     </section>

     <script type="text/javascript">
         var foopicker = new FooPicker({
             id: 'txtexdate',
             dateFormat: 'dd/MM/yyyy'

         });
        
  </script>

</asp:Content>

