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
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterStartupScript(Page.GetType(), "", "cargar()", true);
        }

        [System.Web.Services.WebMethod(EnableSession = true)]
        public static void btnIngresar_Click(string correo)
        {
            HttpContext.Current.Session["correo"] = correo;

            // BLLogin usua = new ManejadorLogin().buscarUsuario(correo, contrasena);
            //if (usua.correo != null && !usua.correo.Equals(""))
            //{
            //Session["usuario"] = correo;

            //}
            //else
            //{

            //}

        }
    }
}