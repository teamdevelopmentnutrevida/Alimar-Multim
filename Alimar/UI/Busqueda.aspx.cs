using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UI
{
    public partial class Busqueda : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            String valor = Request.QueryString["Valor"];

            if (valor.Equals("Mujer"))
            {

            }
            else {
                if (valor.Equals("Hombre"))
                {

                }
                else {
                    if (valor.Equals("Niña"))
                    {

                    }
                    else {

                    }
                }
            }

        }
    }
}