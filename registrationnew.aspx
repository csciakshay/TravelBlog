<%@ Page Title="" Language="VB" MasterPageFile="~/mainmaster.master" AutoEventWireup="false" CodeFile="registrationnew.aspx.vb" Inherits="registrationnew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_1.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-start">
          <div class="col-md-9 ftco-animate pb-4">
            <h1 class="mb-3 bread">REGISTRATION</h1>
             <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>REGISTRATION <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-counter img ftco-section ftco-no-pt ftco-no-pb">
    	<div class="container">          
            
            
            <div class ="row d-flex">
                <div class ="col-md-4">
                    <asp:Label ID="Label1" runat="server" Text="ID" ></asp:Label>
                    <asp:TextBox ID="txtid" runat="server" class="form-control" ReadOnly="True">
                    </asp:TextBox>

                </div>
                <div class ="col-md-4">
                    <asp:Label ID="Label2" runat="server" Text="NAME"  ></asp:Label>
                    <asp:TextBox ID="txtname" runat="server" class="form-control"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class ="col-md-4">
                    <asp:Label ID="Label3" runat="server" Text="ADDRESS"  ></asp:Label>
                    <asp:TextBox ID="txtaddress" runat="server" class="form-control"></asp:TextBox>
                    
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtaddress" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>
            <br />
            <div class ="row d-flex">
                <div class ="col-md-4">
                     <asp:Label ID="Label4" runat="server" Text="CONTACTNO"></asp:Label>
                     <asp:TextBox ID="txtcontactno" runat="server" class="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtcontactno" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Not In Range" ControlToValidate="txtcontactno" ForeColor="Red" ValidationExpression="^([0-9]{10})$"></asp:RegularExpressionValidator>    
                
                </div>
                 <div class ="col-md-4">
                      <asp:Label ID="Label5" runat="server" Text="GENDER"></asp:Label></BR>
                      <asp:Label ID="Label6" runat="server" Text="MALE"></asp:Label><asp:RadioButton ID="RadioButton1" runat="server" GroupName="a" />  
                      <asp:Label ID="Label7" runat="server" Text="FEMALE"></asp:Label><asp:RadioButton ID="RadioButton2" runat="server" GroupName="a" />
                 </div>
                 <div class ="col-md-4">
                      <asp:Label ID="Label8" runat="server" Text="GMAIL"></asp:Label>
                      <asp:TextBox ID="txtgmail" runat="server" class="form-control"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtgmail" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                 </div>
                </div>
                <br/>
            <div class ="row d-flex">
                 <div class ="col-md-4">
                       <asp:Label ID="Label9" runat="server" Text="PASSWORD"></asp:Label>
                       <asp:TextBox ID="txtpassword" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtpassword" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                 </div>
                 <div class ="col-md-4">
                       <asp:Label ID="Label10" runat="server" Text="RE-ENTER-PASSWORD"></asp:Label>
                       <asp:TextBox ID="txtrepassword" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtrepassword" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                         <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtrepassword" ErrorMessage="not match" ForeColor="Red"></asp:CompareValidator>
                         <br />
                 </div>
                 <div class ="col-md-4">
                       <asp:Label ID="Label11" runat="server" Text="UPLOAD IMAGE"></asp:Label>
                         <asp:FileUpload ID="FileUpload1" runat="server" /> 
                 </div>
                 </div>
            </div>
              <div class ="row d-flex">
                 <div class ="col-md-4">
                 </div>
                 <div class ="col-md-4">
                     <asp:Button ID="Button1" runat="server" Text="Submit"  class="btn btn-secondary py-3 px-4"/>
                 </div>
                 <div class ="col-md-4">
                 </div>
               </div>
           
        </section>
</asp:Content>

