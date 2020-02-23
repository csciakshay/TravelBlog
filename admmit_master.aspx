<%@ Page Title="" Language="VB" MasterPageFile="~/mainmaster.master" AutoEventWireup="false" CodeFile="admmit_master.aspx.vb" Inherits="admmite_master" %>

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
            <h1 class="mb-3 bread">ADMMIT_MASTER</h1>
             <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>ADMMIT_MASTER <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-counter img ftco-section ftco-no-pt ftco-no-pb">
    	<div class="container">   
            
             <div class ="row d-flex">
                 <div class ="col-md-4">
                     <asp:Label ID="Label1" runat="server" Text="ADMMIT_ID"></asp:Label>
                     <asp:TextBox ID="txtadid" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtadid" ForeColor="Red"></asp:RequiredFieldValidator>
                 
                 </div>
                 <div class ="col-md-4">
                      <asp:Label ID="Label2" runat="server" Text="ROOM_TYPE"></asp:Label>
                     <asp:TextBox ID="txtroomtype" runat="server" class="form-control"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtroomtype" ForeColor="Red"></asp:RequiredFieldValidator>
                 
                 </div>
                 <div class ="col-md-4">
                     <asp:Label ID="Label3" runat="server" Text="ROOM_NO"></asp:Label>
                     <asp:TextBox ID="txtroomno" runat="server" class="form-control"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txtroomno" ForeColor="Red"></asp:RequiredFieldValidator>
                 
                 </div>

             </div>

            <div class ="row d-flex">
                 <div class ="col-md-4">
                     <asp:Label ID="Label4" runat="server" Text="ADMMIT_DATE"></asp:Label>
                     <asp:TextBox ID="txtaddate" runat="server" class="form-control" ClientIDMode="Static"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="txtaddate" ForeColor="Red"></asp:RequiredFieldValidator>
                 
                 </div>
                <div class ="col-md-4">
                    <asp:Label ID="Label5" runat="server" Text="ADMMIT_TIME"></asp:Label>
                     <asp:TextBox ID="txtadtime" runat="server" class="form-control" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="txtadtime" ForeColor="Red"></asp:RequiredFieldValidator>

                </div>
                 <div class ="col-md-4">
                      <asp:Label ID="Label6" runat="server" Text="DISCHARGE_DATE"></asp:Label>
                     <asp:TextBox ID="txtdisdate" runat="server" class="form-control" ClientIDMode="Static"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="txtdisdate" ForeColor="Red"></asp:RequiredFieldValidator>

                 </div>


            </div>

            <div class ="row d-flex">
                 <div class ="col-md-4">
                     <asp:Label ID="Label7" runat="server" Text="DISCHARGE_TIME"></asp:Label>
                     <asp:TextBox ID="txtdistime" runat="server" class="form-control"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ControlToValidate="txtdistime" ForeColor="Red"></asp:RequiredFieldValidator>
                
                      </div>
                <div class ="col-md-4">
                    <asp:Label ID="Label8" runat="server" Text="ROOM_CHARGE"></asp:Label>
                     <asp:TextBox ID="txtroomcharge" runat="server" class="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*" ControlToValidate="txtroomcharge" ForeColor="Red"></asp:RequiredFieldValidator>

                </div>
                 <div class ="col-md-4">
                     <asp:Label ID="Label9" runat="server" Text="PATIENT_NAME"></asp:Label>
                     <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="Id" Width="261px"></asp:DropDownList>
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Id,name FROM [registration]"></asp:SqlDataSource>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*" ControlToValidate="DropDownList1" ForeColor="Red"></asp:RequiredFieldValidator>  
                 </div>


            </div>
            <br/>
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
            id: 'txtaddate',
            dateFormat: 'dd/MM/yyyy'

        });
        var foopicker2 = new FooPicker({
            id: 'txtdisdate',
            dateFormat: 'dd/MM/yyyy'
        });
  </script>
</asp:Content>

