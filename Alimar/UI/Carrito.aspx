<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="UI.Carrito" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="js/sweetalert28.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>

    .btn {
          background-color: #0099CC; 
          border: none;
          color: white;
          padding: 10px;
          text-align: center;
          text-decoration: none;
          display: inline-block;
          border-radius: 8px;
          font-size: 16px;
          margin: 2px 1px;
          cursor: pointer;
    }
    </style>
        <div class="list-group">
          <a href="#" class="list-group-item active">
            <h4>Lista de Compra:</h4>
          </a>
        </div>
            
   

     <div class="container">
           <div class="row">
                   <div class="col-lg">
                      
                        <table class="table table-striped" id="tblList" style="overflow:scroll">
                            <thead>
                                <tr>
                                    <th>Articulo</th>
                                    <th>Descripcion</th>
                                </tr>
                            </thead>
                            <tbody style="width:auto">
                                 <asp:Literal runat="server" ID="litTabla"></asp:Literal>
                            </tbody>
                        </table>
                   </div>

                
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
                    <strong>Subtotal: ₡ </strong><asp:Label runat="server" ID="SubtotalCompra" Text="0"></asp:Label><br>
                    <strong>IVA 13%: ₡ </strong><asp:Label runat="server" ID="IVA" Text="0"></asp:Label><br>
                    <strong>Costo Envío: ₡ </strong><asp:Label runat="server" ID="Envio" Text="0"></asp:Label><br>
                    <hr />
                      <strong>Total Compra: ₡ </strong><asp:Label runat="server" ID="totComp" Text="0"></asp:Label><br>
                  </div>
                    <hr />
                  <asp:Button runat="server" ID="btnAP" OnClick="btnAP_Click" CssClass="btn" Text="Comprar" />
                  <asp:Button runat="server" ID="btnCanc"  OnClick="btnCanc_Click" CssClass="btn" Text="Cancelar" />
                </div>
              </div>
            </div>
               <%--</div>   --%>                  
            </div>
       
         <div>
             <asp:Literal runat="server" ID="pagoliteral"></asp:Literal>
         </div>
        </div> 
    <script type="text/javascript">
        function Elim(p) {
            var param = "{'dir':' "+ p +" '}";
            $.ajax({
                type: "POST",
                url: '/Carrito.aspx/ElimClick',
                data: param,
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: true,
                success: function () {
                    //alert("Artículo eliminado");
                    location.reload();
                },
                error: function () {
                    alert("Error al eliminar el artículo");
                }
            });
        }
    </script>

     <script type="text/javascript">
         function CargarNumeros() {
             var cod = localStorage.getItem("Cant");
             document.getElementById("num1").value = cod;

         }
    </script>
     <script type="text/javascript">
         function Pago() {
             alert("Pago Realizado. Gracias por su compra.");
             location.href = "PaginaInicio.aspx";
         }

</script>
    <script>
        function Cancel() {
             alert("Gracias por visitarnos");
             location.href = "PaginaInicio.aspx";
         }

</script>

    <script type="text/javascript">
        function Sum(num) {
            var param = "{'pdir':' "+ num +" '}";
            $.ajax({
                type: "POST",
                url: '/Carrito.aspx/SumArtic',
                data: param,
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: true,
                success: function () {
                   // alert("Artículo Agregado");
                },
                error: function () {
                    alert("Error al restar el artículo");
                }
            });
        }
    </script>
     <script type="text/javascript">
        function Rest(num) {
            var param = "{'pdir':' "+ num +" '}";
            $.ajax({
                type: "POST",
                url: '/Carrito.aspx/RestArtic',
                data: param,
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: true,
                success: function () {
                    //alert("Artículo Agregado");
                   // location.reload();
                },
                error: function () {
                    alert("Error al agregar el artículo");
                }
            });
        }
    </script>
   
    
</asp:Content>
