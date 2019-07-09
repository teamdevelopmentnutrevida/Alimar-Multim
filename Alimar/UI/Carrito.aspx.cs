﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BL;

namespace UI
{
    public partial class Carrito : System.Web.UI.Page
    {
        List<articulo> ListaCarrito = new List<articulo>();
        double total = 0;
        public static ManejadorCarrito m = new ManejadorCarrito();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (IsPostBack)
            {
            }
            else { 
                ListaCarrito = m.getLista();
                CargarTabla();
            }
        }


        public void CargarTabla()
        {
           
            int cont = 1;
            if (ListaCarrito != null)
            {
                int fila = ListaCarrito.Count;
                foreach (articulo a in ListaCarrito)
                {
                    litTabla.Text += "<tr><td><h6><strong>" + a.nombre + "</strong></h6>" +
                    "<asp:Image ID=\"imgProd" + cont + "\" runat=\"server\" src=/" + a.path + " alt=\"iMac Desktop Computer\" CssClass = \"img-fluid\" style = \"width:125px;height:100px;\"/>" +
                    "</td><td><strong>Precio:  </strong><a id=\"prec" + cont + "\">" + a.precio + "</a><br/>" +
                   "<strong>Cantidad: </strong><input type = \"number\" id=\"num" + cont + "\" min=\"0\" value= \"1\" style=\"width:50px;\" />" +
                   "<button id=\"mas" + cont + "\" onclick=\"Sum('num" + cont + "','prec" + cont + "','sub" + cont + "')\" style = \"width:30px\">+</button>" +
                   "<button id=\"men" + cont + "\" onclick=\"Rest('num" + cont + "','prec" + cont + "','sub" + cont + "')\" style=\"width:30px\">-</button>" +
                   "<br /><br /><strong>Subtotal: </strong><a id=\"sub" + cont + "\">" + a.precio + "</a></td></tr>";
                    cont += 1;
                    total += a.precio;
                }
                CargarTotal(total);
            }
        }

        private void CargarTotal(double total)
        {
            SubtotalCompra.Text = total + "";
            double imp = ((total * 13) / 100);
            IVA.Text = imp + "";
            Envio.Text = 3000 + "";
            totComp.Text = (total + imp + 3000) + "";
        }


       
        protected void btnCanc_Click(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Cancelar", "Cancel()", true);
            m.IniciarLista();
            SubtotalCompra.Text = "0";
            IVA.Text = "0";
            Envio.Text = "0";
            totComp.Text = "0";
            litTabla.Text = "";
            Response.Redirect("PaginaInicio.aspx");
        }

        protected void btnAP_Click(object sender, EventArgs e)
        {
            pagoliteral.Text = "<div class=\"list-group\"><a href = \"#\" class=\"list-group-item active\">" +
             "<h4>Datos del Pago:</h4></a><div class=\"col-form-label\">" +
              "<label class=\"form-label\">Nombre del propietario, como aparece en la tarjeta</label>" +
              "<input class=\"form-control\" id=\"prop\" style=\"width:50%;\"/><br />" +
               "<label class =\"form-label\">Identificación</label> " +
                "<input class =\"form-control\" id =\"TextBox1\" style=\"width:50%;\"/>" +
                "</div><div class=\"col-form-label\">" +
                "<label class=\"form-label\" for=\"tCedula\">Número de Tarjeta:</label>" +
                "<input class=\"form-control\" id =\"tarjeta\" style=\"width:50%;\"/>" +
                "<label class=\"form-label\" for=\"tCedula\">Tipo de Tarjeta:</label>" +
              "<select class =\"form-control\" style=\"width:40%;\">" +
               "<option value=\"1\"> Visa </option>" +
              " <option value=\"2\"> MasterCards </option></select>"+
              "<label class=\"form-label\" for=\"tnombre\"> Codigo de seguridad:</label>" +
               "<input id = \"cod\" class =\"form-control\" style=\"width:50%;\"/>" +
                "<label id=\"dd\">Fecha de vencimiento</label><br />" +
                "<select class =\"form-control\" style=\"width:25%;\">" +
                 "<option value = \"1\"> 1 </option>" +
                "<option value = \"2\"> 2 </option><option value = \"3\"> 3 </option>" +
                 "<option value = \"4\"> 4 </option><aoption value = \"5\"> 5 </option>" +
                  "<option value = \"6\"> 6 </option><option value = \"7\" > 7 </option" +
              "<option value = \"8\"> 8 </option><option value = \"9\" > 9 </option></select> " +
                "<select class =\"form-control\" style=\"width:25%;\">" +
                "<option value = \"1\"> 2019 </option><option value = \"2\"> 2020 </option" +
                "<option value = \"3\"> 2021 </option><option value = \"4\"> 2022 </option>" +
                "<option value = \"5\"> 2023 </option><option value = \"6\"> 2024 </option>" +
                "<option value = \"7\"> 2025 </option><option value = \"8\"> 2026 </option>" +
                 "<option value = \"9\"> 2027 </option></select> " +
                 "<label class=\"form-label\" for=\"tOcup\"> Número de Telefono:</label>" +
                 "<input  class=\"form-control\" id =\"tel\" style=\"width:50%;\"/>" +
                "<label class=\"form-label\" for=\"tnombre\" > Correo:</label>" +
               "<input id=\"txtNombre\" class =\"form-control\" style=\"width:50%;\"/></div></div>" +
            " <asp:Button ID=\"Button54\" runat=\"server\" OnClick =\"Pago()\" Class=\"btn\">Pagar</asp:Button>" +
             "<asp:Button ID=\"Button20\" runat=\"server\" OnClick =\"btnCanc_Click\" Class=\"btn\">Cancelar</asp:Button>";

        }
    }
    
}

