using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BL;

namespace UI
{
    public partial class Producto : System.Web.UI.Page
    {
        private articulo artic;
        protected void Page_Load(object sender, EventArgs e)
        {
            String Valor = Request.QueryString["Valor"];

            ManejadorArticulo manejador = new ManejadorArticulo();

            articulo artic = manejador.recuperarArticulo(Valor);

            lbHead.Text = artic.nombre;
            imgProducto.ImageUrl = artic.path;
            lbPrecio.Text = artic.precio + "";
            lbDescripcion.Text = artic.descipcion;
            lbGenero.Text = artic.genero;

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            ManejadorCarrito carrito = new ManejadorCarrito();

            carrito.AgregarArticulo(artic);

        }
    }
}