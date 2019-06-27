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
            CargarLAbel();
        }

        public void CargarLAbel()
        {
            foreach(articulo a in ListaCarrito)
            {
                lbl.Text += a.nombre + ", ";
            }
            
        }



    }
    
}

