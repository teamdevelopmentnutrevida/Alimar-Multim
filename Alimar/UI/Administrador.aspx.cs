using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BL;

namespace UI
{
    public partial class Administrador : System.Web.UI.Page
    {
        public static ManejadorCarrito m = new ManejadorCarrito();
        protected void Page_Load(object sender, EventArgs e)
        {
            CargarLista();
            
        }
        private void CargarLista()
        {
            m.AgregarArticulo(new articulo("tipo1","path1", "genero1", 12, "descipcion", 55, "nombre"));
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Carrito.aspx");
        }
    }
}