using System;
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
        public static ManejadorCarrito m = new ManejadorCarrito();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
               
            }
            else
            {
                ListaCarrito = m.getLista();
                CargarTabla();
            }
        }

        public void CargarTabla()
        {
            double total = 0;
            int cont = 1;
            if (ListaCarrito != null)
            {
                foreach (articulo a in ListaCarrito)
                {
                    litTabla.Text += "<tr><td><h6><strong>"+a.nombre+"</strong></h6>"+
                    "<asp:Image ID=\"imgProd"+cont+"\" runat=\"server\" src="+a.path+" alt=\"iMac Desktop Computer\" CssClass = \"img-fluid\" style = \"width:125px;height:100px;\"/>"+
                    "</td><td><strong>Precio:  </strong><a id=\"prec"+cont+"\">"+a.precio+"</a><br/>"+
                   "<strong>Cantidad: </strong><input type = \"number\" id=\"num"+cont+"\" min=\"0\" value= \"1\" style=\"width:50px;\" />"+
                   "<button id=\"mas"+cont+"\" onclick=\"Sum('num"+cont+"','prec"+cont+"','sub"+cont+"')\" style = \"width:30px\">+</button>"+
                   "<button id=\"men"+cont+"\" onclick=\"Rest('num"+cont+"','prec"+cont+"','sub"+cont+"')\" style=\"width:30px\">-</button>"+
                   "<br /><br /><strong>Subtotal: </strong><a id=\"sub"+cont+"\">"+a.precio+"</a></td></tr>";
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
            //m.IniciarLista();
            SubtotalCompra.Text = "0";
            IVA.Text =  "0";
            Envio.Text = "0";
            totComp.Text = "0";
            litTabla.Text = "";
            Response.Redirect("PaginaInicio.aspx");
        }

        protected void btnAP_Click(object sender, EventArgs e)
        {
            pagoliteral.Text = "<div class=\"list-group\"><a href = \"#\" class=\"list-group-item active\">" +
             "<h4>Datos del Pago:</h4></a><div class=\"col-form-label\">" +
              "<asp:Label runat =\"server\"  CssClass=\"form-label\" Text=\"Nombre del propietario, como aparece en la tarjeta\"></asp:Label>" +
              "<asp:TextBox runat = \"server\" CssClass=\"form-control\" ID=\"prop\" Width =\"25%\" ></asp:TextBox>    <br />" +
                 "<asp:Label runat = \"server\"  CssClass =\"form-label\" Text =\"Identificación\" ></asp:Label> " +
                "<asp:TextBox runat = \"server\" CssClass =\"form-control\" ID =\"TextBox1\" Width =\"25%\" ></asp:TextBox> " +
            "</div><div class=\"col-form-label\" >" +
                "<label class=\"form-label\" for=\"tCedula\" > Número de Tarjeta:</label>" +
                "<asp:TextBox runat =\"server\" CssClass=\"form-control\" ID =\"tarjeta\" Width =\"25%\" ></asp:TextBox>" +
                "<label class=\"form-label\" for=\"tCedula\" > Tipo de Tarjeta:</label>" +
              "<asp:DropDownList runat = \"server\" ID =\"tipoT\" CssClass =\"form-control\" Width =\"25%\">" +
               "<asp:ListItem Value = \"1\"> Visa </ asp:ListItem>" +
              " <asp:ListItem Value = \"2\" > MasterCards </ asp:ListItem></asp:DropDownList>"+
              "<label class=\"form-label\" for=\"tnombre\" > Codigo de seguridad:</label>" +
               "<asp:TextBox ID = \"cod\" runat =\"server\" CssClass =\"form-control\" Width =\"25%\" ></asp:TextBox>" +
                "<asp:Label runat = \"server\" Text =\"Fecha de vencimiento\" ></asp:Label><br />" +
                "<asp:DropDownList runat = \"server\" ID =\"dia\" CssClass =\"form-control\" Width =\"5%\" > " +
                 "   <asp:ListItem Value = \"1\" > 1 </ asp:ListItem>" +
                "<asp:ListItem Value = \"2\" > 2 </ asp:ListItem><asp:ListItem Value = \"3\" > 3 </ asp:ListItem>" +
                 "<asp:ListItem Value = \"4\" > 4 </ asp:ListItem><asp:ListItem Value = \"5\" > 5 </ asp:ListItem>" +
                  "<asp:ListItem Value = \"6\" > 6 </ asp:ListItem><asp:ListItem Value = \"7\" > 7 </ asp:ListItem>" +
              "<asp:ListItem Value = \"8\" > 8 </ asp:ListItem><asp:ListItem Value = \"9\" > 9 </ asp:ListItem></asp:DropDownList> " +
                "<asp:DropDownList runat = \"server\" ID=\"anno\" CssClass =\"form-control\" Width =\"8%\" > " +
                "<asp:ListItem Value = \"1\" > 2019 </ asp:ListItem><asp:ListItem Value = \"2\" > 2020 </ asp:ListItem>" +
                "<asp:ListItem Value = \"3\" > 2021 </ asp:ListItem><asp:ListItem Value = \"4\" > 2022 </ asp:ListItem>" +
                "<asp:ListItem Value = \"5\" > 2023 </ asp:ListItem><asp:ListItem Value = \"6\" > 2024 </ asp:ListItem>" +
                "<asp:ListItem Value = \"7\" > 2025 </ asp:ListItem><asp:ListItem Value = \"8\" > 2026 </ asp:ListItem>" +
                 "<asp:ListItem Value = \"9\" > 2027 </ asp:ListItem></asp:DropDownList> " +
                 "<label class=\"form-label\" for=\"tOcup\" > Número de Telefono:</label>" +
                 "<asp:TextBox runat =\"server\" CssClass=\"form-control\" ID =\"tel\" Width =\"25%\" ></asp:TextBox>" +
                "<label class=\"form-label\" for=\"tnombre\" > Correo:</label>" +
               "<asp:TextBox ID = \"txtNombre\" runat=\"server\" CssClass =\"form -control\" Width =\"25%\" ></asp:TextBox></div></div>" +
            " <button ID = \"Button5\" onclick =\"Pago()\" class=\"btn\" >Pagar</button>" +
             "<asp:Button runat = \"server\" ID=\"Button20\"  OnClick =\"btnCanc_Click\" CssClass=\"btn\" Text =\"Cancelar\" ></asp:Button>";

        }
    }
    
}

