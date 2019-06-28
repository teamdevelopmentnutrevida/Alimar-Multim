<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="UI.Carrito" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- <form runat="server">--%>
        <div class="list-group">
          <a href="#" class="list-group-item active">
            <h4>Lista de Compra:</h4>
          </a>
        </div>
            
   

     <div class="container">
           <div class="row">
                   <div class="col-lg">
                        <table class="table table-striped" id="tblList">
                            <thead>
                                <tr>
                                    <th>Nombre</th>
                                    <th>Precio</th>
                                    <th>Cantidad</th>
                                    <th>Subtotal</th>
                                </tr>
                            </thead>
                            <tbody >
                                <tr>
                                    <td>Articulo1</td>
                                    <td><a id="prec">100</a></td>
                                    <th><input type="number" id="b1" min="0" onclick="Sum('b1','prec','p1')" value="1" style="width:50px;"/>
                                        <button id="mas" onclick="Sum('b1','prec','p1')" style="width:50px">+</button>
                                        <button id="menos" onclick="Sum('b1','prec','p1')">-</button>
                                    </th>
                                    <th><a id="p1">100</a></th>
                                </tr>
                                <tr>
                                    <td>Articulo1</td>
                                    <td><asp:Label runat="server" ID="prec1">100</asp:Label></td>
                                    <th><asp:TextBox runat="server" type="number" ID="b2" min="0" CommandArgument="b2"  OnTextChanged="b2_TextChanged" value="1"/></></th>
                                    <th><asp:Label runat="server"  ID="p2">100</asp:Label></th>
                                </tr>
                                 <asp:Literal runat="server" ID="litTabla"></asp:Literal>
                            </tbody>
                        </table>
                   </div>

                <script>
                    function Sum(cant, precio, subtotal) {
                        var cant = document.getElementById("" + cant + "").value;
                        var subt = document.getElementById("" + precio + "").innerHTML;
                        var t = parseInt(cant) * parseInt(subt);
                        document.getElementById("" + subtotal + "").innerHTML  = t;
                        SumTotal(subt);
                    }
                </script>
               <script>
                    function SumTotal(precio) {
                        var total = document.getElementById("totComp").innerHTML;
                        var y = parseInt(total) + parseInt(precio);
                        document.getElementById("totComp").innerHTML  = y;
                    }
                </script>
                    <div class="col-1"></div>
                    <%--<div class="col-form-label">--%>
                   

               <div class="col-xl-4 col-lg-5">
              <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">Total de la Compra</h6>
                </div>
                <!-- Card Body -->

                <div class="card-body">
                  <div class="chart-pie pt-4">
                    <strong>Total Compra: ₡ </strong><span id="totComp">0</span><br>
                  </div>
                  <hr>
                  <asp:Button runat="server" ID="btnAP" OnClick="btnAP_Click" Text="Pagar"></asp:Button>
                  <asp:Button runat="server" ID="btnCanc"  OnClick="btnCanc_Click" Text="Cancelar"></asp:Button>
                        
                </div>
              </div>
            </div>
               <%--</div>   --%>  

                
            </div>

         
        </div>

     
<%-- </form>  --%> 
</asp:Content>
