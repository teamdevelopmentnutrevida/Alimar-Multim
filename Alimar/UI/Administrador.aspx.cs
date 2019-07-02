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
        List<articulo> list = new List<articulo>();
        public static ManejadorArticulo m = new ManejadorArticulo();
        protected void Page_Load(object sender, EventArgs e)
        {
            CargarLista();
            
        }
        private void CargarLista()
        {
            int cont = 1;
            list = m.traerLista();
            foreach(articulo a in list)
            {
                litTabla.Text += "<tr><td>"+a.nombre+"</td>"+
                "<td><asp:Button runat=\"server\" ID=\"Modif"+cont+"\" OnClick=\"Modif_Click\" CommandArgument=\"Modif"+cont+"\" Text=\"Modificar\"></asp:Button></td>"+
               "<td><asp:Button runat =\"server\" ID=\"Elim"+cont+"\" CommandArgument=\"Elim"+cont+ "\" OnClick=\"Elim_Click\" Text = \"Eliminar\"></asp:Button></td></tr>";
                cont += 1;
            }
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Carrito.aspx");
        }

        protected void Modif_Click(object sender, EventArgs e)
        {

        }

        protected void Elim_Click(object sender, EventArgs e)
        {
            Button txt = (Button)sender;
            string id = txt.ID;
            
        }
    }
}