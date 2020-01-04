<%@ Page Title="" Language="VB" MasterPageFile="~/MainUserMaster.master" AutoEventWireup="false" CodeFile="travelEntry.aspx.vb" Inherits="travelEntry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%">
   <tr>
        <asp:TextBox ID="txtUserId" runat="server" Visible="false" ></asp:TextBox>
        <asp:TextBox ID="txtTravelId" runat="server" Visible="false" ></asp:TextBox>
        <td><asp:Label ID="Label1" runat="server" Text="Subject"></asp:Label></td>
        <td><asp:TextBox ID="txtSubject" runat="server"></asp:TextBox></td>
        <td><asp:Label ID="Label3" runat="server" Text="Description"></asp:Label></td>
        <td><asp:TextBox ID="txtDesc" runat="server"></asp:TextBox></td>
   </tr>

    <tr>
        <td><asp:Label ID="Label4" runat="server" Text="Details"></asp:Label></td>
        <td colspan="3"><asp:TextBox ID="txtDtlDesc" runat="server" TextMode="MultiLine" Rows="10" Columns="100"></asp:TextBox></td>
        
    </tr>
    
    <tr>
        <td><asp:Label ID="Label11" runat="server" Text="Upload Photo"></asp:Label></td>
        <td><asp:FileUpload ID="FileUpload1" runat="server" accept="image/png image/jpeg image/gif" AllowMultiple="true"/> </td>
        <td colspan ="2"><asp:Image ID="Image1" runat="server" Height="50" Width="50" 
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

