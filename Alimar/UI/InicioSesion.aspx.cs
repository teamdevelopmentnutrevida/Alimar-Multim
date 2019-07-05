using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BL;

namespace UI
{
    public partial class InicioSesion : System.Web.UI.Page
    {
        public ManejadorLogin ingreso = new ManejadorLogin();
        Ingreso admin;
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterStartupScript(Page.GetType(), "", "cargar()", true);
            admin = ingreso.TraerDatos();
            
        }

		protected void btnIngresar_Click(object sender, EventArgs e)
		{
            if (admin != null)
            {
                if (txtCorr.Text.Equals(admin.Correo) && txtContras.Text.Equals(admin.Contrasenna))
                {
                    Response.Redirect("Administrador.aspx");
                }
                else
                {
                    Response.Redirect("PaginaInicio.aspx");
                }
            }
            else
            {
                Response.Redirect("PaginaInicio.aspx");
            }
		}

		protected void btnCancel_Click(object sender, EventArgs e)
		{
			Response.Redirect("PaginaInicio.aspx");
		}



		}
}