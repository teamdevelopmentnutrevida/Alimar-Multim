<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Administrador.aspx.cs" Inherits="UI.Administrador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<form runat="server">--%>
<style>
    .my-custom-scrollbar {
position: relative;
height: 200px;
overflow: auto;
}
.table-wrapper-scroll-y {
display: block;
}
    </style>
	 <div class="container">
           <div class="row">
                   <div class="col-form-label">
                       Administración de Articulos
                   <%--</div>
               <div class="col-1"></div>--%>
               <div class="table-wrapper-scroll-y my-custom-scrollbar">
                      <table class="table table-striped" id="tblList" >
                            <thead>
                                <tr>
                                    <th>Nombre</th>
                                    <th>Modificar</th>
                                    <th>Eliminar</th>
                                </tr>
                            </thead>
                            <tbody >
                                <tr>
                                    <td>Articulo1</td>
                                    <td><asp:Button runat="server" ID="Modif" OnClick="Modif_Click" CommandArgument="Modif1" Text="Modificar"></asp:Button></td>
                                    <th><asp:Button runat="server" ID="Elim" CommandArgument="b2" OnClick="Elim_Click" Text="Eliminar" /></th>
                                </tr>
                                 <asp:Literal runat="server" ID="litTabla"></asp:Literal>
                            </tbody>
                        </table>
                   </div>
		</div>
		</div>


   <%--</form>--%>

</asp:Content>
