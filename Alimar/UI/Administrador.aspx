<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Administrador.aspx.cs" Inherits="UI.Administrador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<style>
    .my-custom-scrollbar {
position: relative;
height: 300px;
width: 400px;
overflow: auto;
}
.table-wrapper-scroll-y {
display: block;
}
    </style>
	 <div class="container">
        <div class="row">
            <div class="col-form-label">
                     <h3 class="m-0 font-weight-bold text-primary">Administración de Articulos</h3>  
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
                                <%--<tr>
                                    <td>Articulo1</td>
                                    <td><asp:Button runat="server" ID="Modif" OnClick="Modif_Click" CommandArgument="Modif1" Text="Modificar"></asp:Button></td>
                                    <th><asp:Button runat="server" ID="Elim" CommandArgument="b2" OnClick="Elim_Click" Text="Eliminar"/></th>
                                </tr>--%>
                                 <asp:Literal runat="server" ID="litTabla"></asp:Literal>
                            </tbody>
                        </table>
                   </div>
		    </div>
             <div class="col-1"></div>
            <div class="col-form-label" style="width:500px;">
                <%--<div class="col-xl-4 col-lg-5">--%>
              <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3">
                  <h4 class="m-0 font-weight-bold text-primary">Nuevo Artículo</h4>
                </div>
                <!-- Card Body -->

                <div class="card-body">
                 <%-- <div class="chart-pie pt-4">--%>
                    
                    <label><strong>Nombre:</strong></label><input id="newNombre"/><br />
                    <label><strong>Descripción:</strong></label><input id="newDescrip"/><br />
                    <label><strong>Precio:</strong></label><input id="newPrecio"/><br>
                    <label><strong>Tipo:</strong></label><input id="newTipo"/><br>
                     <label><strong>Género:</strong></label><input id="newGenero"/><br>
                     <label><strong>Edad:</strong></label><input id="newEdad"/><br>
                    <hr />
                     <input name="file-input" id="file-input" type="file" />
               <%--   </div>--%>
                   <hr />
                    <button id="Guardra" class="btn" onclick="Guardar">Guardar</button>
                  </div>
             <%-- </div>--%>
                
            </div>
            </div>
		</div>
    </div>
    <style>
        label{
          display: inline-block;
          width: 120px;
        }
        input{
            width: 60%;
        }
    </style>



</asp:Content>
