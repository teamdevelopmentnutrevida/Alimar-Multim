using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BL;

namespace UI
{
    public partial class Mujer : System.Web.UI.Page
    {
        public string datos;
        protected void Page_Load(object sender, EventArgs e)
        {
            datos = datosEncontrados();
        }
        [System.Web.Services.WebMethod(EnableSession = true)]
        public static void EnviarObjeto(string path) {
            HttpContext.Current.Session["Articulo"] = path;
        }



        public string datosEncontrados() {
            return "11";
        }
    }
}