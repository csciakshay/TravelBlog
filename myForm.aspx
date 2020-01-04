<%@ Page Title="" Language="VB" MasterPageFile="~/MainUserMaster.master" AutoEventWireup="false" CodeFile="myForm.aspx.vb" Inherits="myForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%">
   <tr>
        <asp:TextBox ID="txtUserId" runat="server" Visible="false" ></asp:TextBox>
        <td><asp:Label ID="Label1" runat="server" Text="Full Name"></asp:Label></td>
        <td><asp:TextBox ID="txtFullName" runat="server"></asp:TextBox></td>
        <td><asp:Label ID="Label2" runat="server" Text="Gender"></asp:Label></td>
        <td><asp:RadioButton ID="rbMale" runat="server"  GroupName="gender" Text="Male" Checked /> 
        <asp:RadioButton ID="rbFemale" runat="server" GroupName="gender" Text="Female"/></td>
        <td><asp:Label ID="Label3" runat="server" Text="Address"></asp:Label></td>
        <td><asp:TextBox ID="txtAddress" runat="server"></asp:TextBox></td>
   </tr>

    <tr>
        <td><asp:Label ID="Label4" runat="server" Text="City"></asp:Label></td>
        <td><asp:TextBox ID="txtCity" runat="server"></asp:TextBox></td>
        <td><asp:Label ID="Label5" runat="server" Text="State"></asp:Label></td>
        <td><asp:TextBox ID="txtState" runat="server"></asp:TextBox></td>
        <td> <asp:Label ID="Label6" runat="server" Text="Contry"></asp:Label></td>
        <td><asp:TextBox ID="txtCountry" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
        <td><asp:Label ID="Label7" runat="server" Text="Contact No"></asp:Label></td>
        <td> <asp:TextBox ID="txtContactNo" runat="server"></asp:TextBox></td>
        <td><asp:Label ID="Label8" runat="server" Text="Email"></asp:Label></td>
        <td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
        <td><asp:Label ID="Label9" runat="server" Text="Password"></asp:Label></td>
        <td> <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
        <td><asp:Label ID="Label10" runat="server" Text="ReEnter Password"></asp:Label></td>
        <td><asp:TextBox ID="txtPasswordRe" runat="server" TextMode="Password"></asp:TextBox></td>
    </tr>
    <tr>
        <td><asp:Label ID="Label11" runat="server" Text="Upload Photo"></asp:Label></td>
        <td><asp:FileUpload ID="FileUpload1" runat="server" /> </td>
        <td></td>
        <td><asp:Image ID="Image1" runat="server" Height="50" Width="50" 
                ImageUrl="~/upload/noimage.png" /></td>
    </tr>
    <tr>
    <td colspan="2"></td>
    <td colspan="2">
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" class="button-v1 button-medium green radius-button"/>
        <asp:Button ID="btnReset" runat="server" Text="Reset" class="button-v1 button-medium green radius-button"/>
    </td>
    <td colspan="2"></td>
    </tr>
    </table>
    
</asp:Content>

