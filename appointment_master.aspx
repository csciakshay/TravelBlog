<%@ Page Title="" Language="VB" MasterPageFile="~/mainmaster.master" AutoEventWireup="false" CodeFile="appointment_master.aspx.vb" Inherits="appointment_master" %>

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
            <h1 class="mb-3 bread">APPOINTMENT_MASTER</h1>
             <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>APPOINTMENT_MASTER <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
        </div>
      </div>
    </section>

     <section class="ftco-counter img ftco-section ftco-no-pt ftco-no-pb">
    	<div class="container">   
            
             <div class ="row d-flex">
                 <div class ="col-md-4">
                     <asp:Label ID="Label1" runat="server" Text="APPOINTMENT_ID"></asp:Label>
                     <asp:TextBox ID="txtappid" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>

                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtappid" ForeColor="Red"></asp:RequiredFieldValidator>
                 </div>

                  <div class ="col-md-4">
                      <asp:Label ID="Label4" runat="server" Text="PATIENT_NAME"></asp:Label>
                      <asp:DropDownList ID="DropDownList1" runat="server"  class="form-control " Width="261px"></asp:DropDownList>
                      
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="DropDownList1" ForeColor="Red"></asp:RequiredFieldValidator>
                  
                  </div>
                  <div class ="col-md-4">
                      <asp:Label ID="Label2" runat="server" Text="APPOINTMENT_DATE"></asp:Label>
                      <asp:TextBox ID="txtappdate" runat="server" class="form-control" ClientIDMode="Static"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtappdate" ForeColor="Red"></asp:RequiredFieldValidator>
                  </div>


                 </div>
             <div class ="row d-flex">
                  <div class ="col-md-6">
                      <asp:Label ID="Label3" runat="server" Text="APPOINTMENT_TIME"></asp:Label>
                      <asp:DropDownList ID="DropDownList2" runat="server" class="form-control ">
                          <asp:ListItem>8:00 AM</asp:ListItem>
                          <asp:ListItem>9:00 AM</asp:ListItem>
                          <asp:ListItem>10:00 AM</asp:ListItem>
                          <asp:ListItem>11:00 AM</asp:ListItem>
                          <asp:ListItem>12:00 PM</asp:ListItem>
                          <asp:ListItem>1:00 PM</asp:ListItem>
                          <asp:ListItem>2:00 PM</asp:ListItem>
                          <asp:ListItem>3:00 PM</asp:ListItem>
                          <asp:ListItem>4:00 PM</asp:ListItem>
                          <asp:ListItem>5:00 PM</asp:ListItem>
                          <asp:ListItem>6:00 PM</asp:ListItem>
                          <asp:ListItem>7:00 PM</asp:ListItem>
                          <asp:ListItem>8:00 PM</asp:ListItem>
                          <asp:ListItem>9:00 PM</asp:ListItem>
                      </asp:DropDownList>
                  
                  
                  </div>
                 
           
            
                 <div class ="col-md-6">
                     <asp:Label ID="Label5" runat="server" Text="APPOINTMENT_DESCRIPTION"></asp:Label>
                     <asp:TextBox ID="txtappdes" runat="server" class="form-control"></asp:TextBox>

                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="txtappdes" ForeColor="Red"></asp:RequiredFieldValidator>

                 </div>

                 

             </div>
            <br/>
            <div class ="row d-flex">
                   <div class ="col-md-4">
                       
                   </div>

                   <div class ="col-md-4">
                         <asp:Button ID="btnsubmit" runat="server" Text="SUBMIT" class="btn btn-secondary py-3 px-4" />
                   </div>
                    <div class ="col-md-4">
                       
                   </div>

                   </div>
                  
              </div>     
          
            
     </section>
    <script type="text/javascript">
        var foopicker = new FooPicker({
            id: 'txtappdate',
            dateFormat: 'dd/MM/yyyy'

        });
        
  </script>
</asp:Content>

