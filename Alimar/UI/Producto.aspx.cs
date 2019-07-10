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
       public articulo artic = new articulo();
       public static ManejadorCarrito carrito = new ManejadorCarrito();

        protected void Page_Load(object sender, EventArgs e)
        {
            string Valor = Request.QueryString["Valor"];

            ManejadorArticulo manejador = new ManejadorArticulo();


            if (IsPostBack)
            {
                artic = (articulo)Session["articulo"];
            }
            else {
                artic = manejador.recuperarArticulo(Valor);
                Session["articulo"] = artic;
            }

            

            lbHead.Text = artic.nombre;
            imgProducto.ImageUrl = artic.path;
            lbPrecio.Text = "₡" + artic.precio;
            lbDescripcion.Text = artic.descipcion;
            lbGenero.Text = artic.genero;

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {


            ManejadorCarrito carrito = new ManejadorCarrito();

            carrito.AgregarArticulo(artic);
            btnAgregar.Enabled = false;
            btnAgregar.CssClass = "adc btn btn-primary";
        }
    }
}