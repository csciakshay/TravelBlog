<%@ Page Title="" Language="VB" MasterPageFile="~/mainmaster.master" AutoEventWireup="false" CodeFile="doctor_master.aspx.vb" Inherits="doctor_master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_1.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-start">
          <div class="col-md-9 ftco-animate pb-4">
            <h1 class="mb-3 bread">DOCTOR_MASTER</h1>
             <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>DOCTOR_MASTER <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
        </div>
      </div>
    </section>

     <section class="ftco-counter img ftco-section ftco-no-pt ftco-no-pb">
    	<div class="container">   
            
             <div class ="row d-flex">
                 <div class ="col-md-4">
                     <asp:Label ID="Label1" runat="server" Text="DOCTOR_ID"></asp:Label>
                     <asp:TextBox ID="txtdocid" runat="server" class="form-control"></asp:TextBox>
                     
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor ="Red" ControlToValidate="txtdocid" ></asp:RequiredFieldValidator>
                 </div>

                  <div class ="col-md-4">
                      <asp:Label ID="Label2" runat="server" Text="DOCTOR_FIRST_NAME"></asp:Label>
                      <asp:TextBox ID="txtdocfir" runat="server" class="form-control"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtdocfir" ForeColor="Red"></asp:RequiredFieldValidator>

                  </div>
                  <div class ="col-md-4">
                      <asp:Label ID="Label10" runat="server" Text="DOCTOR_MIDDLE NAME"></asp:Label>
                      <asp:TextBox ID="txtdocmid" runat="server" class="form-control"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txtdocmid" ForeColor="Red"></asp:RequiredFieldValidator>

                  </div>

                 </div>
            <br/>
            <div class ="row d-flex">
                   <div class ="col-md-4">
                       <asp:Label ID="Label11" runat="server" Text="DOCTOR_LAST_NAME"></asp:Label>
                      <asp:TextBox ID="txtdoclast" runat="server" class="form-control"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="txtdoclast" ForeColor="Red"></asp:RequiredFieldValidator>     
                       
                    </div>

                  <div class ="col-md-4">
                      <asp:Label ID="Label3" runat="server" Text="DOCTOR_PHONENO"></asp:Label>
                      <asp:TextBox ID="txtdocphone" runat="server" class="form-control"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*" ControlToValidate="txtdocphone" ForeColor="Red"></asp:RequiredFieldValidator>
                  </div>
                 
            </div>
             <div class ="row d-flex">

                 <div class ="col-md-4">
                     <asp:Label ID="Label4" runat="server" Text="DOCTOR_GENDER"></asp:Label></br>
                     <asp:Label ID="Label8" runat="server" Text="MALE"></asp:Label>
                     <asp:RadioButton ID="RadioButton3" runat="server" GroupName="a" />
                     <asp:Label ID="Label9" runat="server" Text="FEMALE"></asp:Label><asp:RadioButton ID="RadioButton2" runat="server" GroupName="a" />
                 
                 </div>

                 <div class ="col-md-4">
                     <asp:Label ID="Label5" runat="server" Text="DOCTOR_SPECIALIZATION"></asp:Label>
                     <asp:TextBox ID="txtdocspe" runat="server" class="form-control"></asp:TextBox>

                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="txtdocspe" ForeColor="Red"></asp:RequiredFieldValidator>

                 </div>

             
                 <div class ="col-md-4">
                     <asp:Label ID="Label6" runat="server" Text="DOCTOR_EDUCATION"></asp:Label>
                     <asp:TextBox ID="txtdocedu" runat="server" class="form-control"></asp:TextBox>

                     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="txtdocedu" ForeColor="Red"></asp:RequiredFieldValidator>
                 </div>
           </div>
            
            <br/>
            <div class ="row d-flex">
                   <div class ="col-md-4">
                       <asp:Label ID="Label7" runat="server" Text="DOCTOR_EMAIL"></asp:Label>
                       <asp:TextBox ID="txtdocmail" runat="server" class="form-control"></asp:TextBox>


                       <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ControlToValidate="txtdocmail" ForeColor="Red"></asp:RequiredFieldValidator>
                   </div>

                   <div class ="col-md-4">
                   </div>
                  
                    <div class ="col-md-4">
                   </div>
            </div>
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

</asp:Content>

