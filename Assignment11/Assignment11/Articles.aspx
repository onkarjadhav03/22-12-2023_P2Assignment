<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Articles.aspx.cs" Inherits="Assignment11.Articles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <table class="auto-style1">
        <tr>
            <td><h2>Article Details</h2></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="gvarticle" runat="server" OnSelectedIndexChanged="gvarticle_SelectedIndexChanged">
                </asp:GridView>
            </td>
        </tr>
    </table>
   
</asp:Content>
