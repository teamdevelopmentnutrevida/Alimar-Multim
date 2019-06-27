<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Administrador.aspx.cs" Inherits="UI.Administrador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Página del administrador</h1>
    <form runat="server">
        <asp:Button runat="server" ID="btn" OnClick="btn_Click" Text="Cambiar Pag"/>
    </form>
    
</asp:Content>
