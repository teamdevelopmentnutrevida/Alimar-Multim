﻿using System;
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
            //artic = (articulo)Session["Articulo"];
            String Valor = Request.QueryString["Valor"];
            //buscar por ruta en la lista

            //lbHead.Text = artic.nombre;
            //imgProducto.ImageUrl = artic.path;
            //lbPrecio.Text = artic.precio + "";
            //lbDescripcion.Text = artic.descipcion;
            //lbGenero.Text = artic.genero; 

        }
    }
}