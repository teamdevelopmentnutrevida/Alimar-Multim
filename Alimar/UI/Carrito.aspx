<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="UI.Carrito" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
          /*display: inline-block;*/
          border-radius: 8px;
          font-size: 16px;
          margin: 2px 1px;
          /*cursor: pointer;*/
    }
  
    </style>
    <%-- <form runat="server">--%>
        <div class="list-group">
          <a href="#" class="list-group-item active">
            <h4>Lista de Compra:</h4>
          </a>
        </div>
            
   

     <div class="container">
           <div class="row">
                   <div class="col-lg">
                      
                        <table class="table table-striped" id="tblList" style="overflow-y:scroll">
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
                   
<%--<script>
    function CargarTotal(sub) {
        document.getElementById('SubtotalCompra').innerHTML = sub;
        var imp = (parseInt(sub) * parseInt(13)) / parseInt(100);
        document.getElementById('IVA').innerHTML = imp;
        document.getElementById('Envio').innerHTML = "3000";
        var tot = parseInt(sub) + parseInt(imp) + parseInt("3000");
        document.getElementById('totComp').innerHTML = tot;
        return false;
    }
</script>--%>
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
     <script>
         function Pago() {
            alert("Pago realizado. Gracias por su compra.");
            location.href = "PaginaInicio.aspx";
         }

</script>
    <script>
         function Cancel() {
             alert("Gracias por visitarnos");
             location.href = "PaginaInicio.aspx";
         }

</script>
    <script>
        function Sum(cant, precio, subtotal) {
            alert("Solo suma");
            var cantid = document.getElementById("" + cant + "").value;
            var prec = document.getElementById("" + precio + "").innerHTML;
            var su = parseInt(cantid)+ parseInt(1);
            var t = parseInt(su) * parseInt(prec);
            document.getElementById("" + cant + "").value = su;
            document.getElementById("" + subtotal + "").innerHTML = t;
            SumTotal(prec);
        }
      
    </script>
    <script>
        function SumTotal(precio) {
            alert("Sumtotal");
            var subtotal = document.getElementById('<%=SubtotalCompra.ClientID%>').innerHTML;
            var nuevoSub = parseInt(subtotal) + parseInt(precio);
            document.getElementById('<%=SubtotalCompra.ClientID%>').innerHTML = nuevoSub;
            var impIVA = (parseInt(nuevoSub) * parseInt(13)) / parseInt(100);
            document.getElementById('<%=IVA.ClientID%>').innerHTML = impIVA;
            var env = document.getElementById('<%=Envio.ClientID%>').innerHTML;
            var tot = parseInt(nuevoSub) + parseInt(impIVA) + parseInt(env);
            document.getElementById('<%=totComp.ClientID%>').innerHTML = tot;
        }
        
    </script>
    <script>
        function Rest(cant, precio, subtotal) {
            alert("Solo resta");
            var cantid = document.getElementById("" + cant + "").value;
            var prec = document.getElementById("" + precio + "").innerHTML;
            if (cantid === "0") {
                var su = "0";
                var t = "0";
                ResTotal(su);
            } else {
                var su = parseInt(cantid) - parseInt(1);
                var t = parseInt(su) * parseInt(prec);
                ResTotal(prec);
            }
            document.getElementById("" + cant + "").value = su;
            document.getElementById("" + subtotal + "").innerHTML = t;
        }
    </script>
    <script>
        function ResTotal(precio) {
                        if (precio !== "0") {
                            var subtotal = document.getElementById('<%=SubtotalCompra.ClientID%>').innerHTML;
                            var nuevoSub = parseInt(subtotal) - parseInt(precio);
                            document.getElementById('<%=SubtotalCompra.ClientID%>').innerHTML = nuevoSub;
                            var impIVA = (parseInt(nuevoSub) * parseInt(13)) / parseInt(100);
                            document.getElementById('<%=IVA.ClientID%>').innerHTML = impIVA;
                            var env = document.getElementById('<%=Envio.ClientID%>').innerHTML;
                            var tot = parseInt(nuevoSub) + parseInt(impIVA) + parseInt(env);
                            document.getElementById('<%=totComp.ClientID%>').innerHTML = tot;
                        } else {
                            document.getElementById('<%=SubtotalCompra.ClientID%>').innerHTML = "0";
                            document.getElementById('<%=IVA.ClientID%>').innerHTML = "0";
                            document.getElementById('<%=totComp.ClientID%>').innerHTML = "0";
                        }
        }
    </script>
</asp:Content>
