using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UI
{
    public partial class InicioSesion : System.Web.UI.Page
    {

        public static string correoAdmin = "admin@gmail.com";
        public static string contrAdmin = "Admin123";

        protected void Page_Load(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterStartupScript(Page.GetType(), "", "cargar()", true);
        }

		protected void btnIngresar_Click(object sender, EventArgs e)
		{
			if (txtCorr.Text.Equals(correoAdmin) && txtContras.Text.Equals(contrAdmin))
			{
				Response.Redirect("Administrador.aspx");
			} else
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