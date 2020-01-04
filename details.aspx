<%@ Page Title="" Language="VB" MasterPageFile="~/MainUserMaster.master" AutoEventWireup="false" CodeFile="details.aspx.vb" Inherits="details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table width="100%">
<tr>
    <td width="100%" align="center">
        <asp:DataList ID="DataList1" runat="server" CellPadding="4" 
                             ForeColor="#333333" BorderColor="Aqua" 
                            BorderWidth="1px" GridLines="Vertical" RepeatColumns="4" 
                            RepeatDirection="Horizontal">
                        <AlternatingItemStyle BackColor="White" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <ItemStyle BackColor="#EFF3FB" />
                        <ItemTemplate>
                          
                            <asp:Image ID="imagesLabel" runat="server" ImageUrl ='<%# Eval("images") %>' Width="100" Height="100" />
                            <br />
                            <br />
                        </ItemTemplate>
                        <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            </asp:DataList>
    </td>
</tr>
<tr>
    <td width="100%" align="center">
        <asp:DetailsView ID="DetailsView1" runat="server" Width="492px" Height="50px" 
                            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                            CellPadding="3" AutoGenerateRows="False">
                            <EditRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                            <Fields>
                                
                                <asp:BoundField DataField="userid" HeaderText="Added By" />                              
                                <asp:BoundField DataField="travelId" HeaderText="Travel Id" />
                                <asp:BoundField DataField="subject" HeaderText="Title" />
                                <asp:BoundField DataField="description" HeaderText="Description" />
                                <asp:BoundField DataField="details" HeaderText="Details"></asp:BoundField>
                                
                            </Fields>
                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                            <RowStyle ForeColor="#000066" />
         </asp:DetailsView>
      </td>
</tr>
<tr>
    <td align="center">
        <asp:Button ID="Button1" runat="server" Text="Back" class="button-v1 button-medium green radius-button"/>
    </td>
</tr>
</table>
    
</asp:Content>

