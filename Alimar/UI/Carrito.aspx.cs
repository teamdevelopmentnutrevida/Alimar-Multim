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
            ListaCarrito = m.getLista();
            
        }

        public void CargarTabla()
        {
            int cont = 1;
            if (ListaCarrito != null)
            {
                foreach (articulo a in ListaCarrito)
                {
                    litTabla.Text += "" +
                    "<tr><td>" + a.nombre + "</td><td><a id=\"prec" + cont + "\">" + a.precio + "</a></td>" +
                    "<th><input type =\"number\" id=\"cant"+cont+ "\" min=\"0\" onclick = \"Sum('cant"+cont+"','prec"+cont+"','sub"+cont+"')\" value = \"1\" /></></th>" +
                   "<th><a id=\"sub" + cont + "\">" + a.precio + "</a></th></tr>";
                    
                }
            }
        }

        protected void btnAP_Click(object sender, EventArgs e)
        {
            m.IniciarLista();
            Response.Write("Compra Realizada Exitosamente. Gracias por preferirnos");
            Response.Redirect("PaginaInicio");
        }

        protected void btnCanc_Click(object sender, EventArgs e)
        {
            m.IniciarLista();
            Response.Redirect("PaginaInicio");
        }

      
    }
    
}

