using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UI
{
    public partial class Principal : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            string variable = TextBox1.Text.ToLower();

            if (String.IsNullOrEmpty(variable))
            {
                Response.Redirect("PaginaInicio.aspx");
            }
            else {
                if (variable.Equals("blusa") || variable.Equals("blusas")) {
                    Response.Redirect("Blusa.aspx");
                }
                if (variable.Equals("deporte") || variable.Equals("deportiva") || variable.Equals("actividad fisica") || variable.Equals("ropa deportiva"))
                {
                    Response.Redirect("Deportiva.aspx");
                }
                if (variable.Equals("pantalon") || variable.Equals("pantalón") || variable.Equals("pantalones"))
                {
                    Response.Redirect("Pantalon.aspx");
                }
                if (variable.Equals("shor") || variable.Equals("short") || variable.Equals("shores") || variable.Equals("shorts"))
                {
                    Response.Redirect("Short.aspx");
                }
                if (variable.Equals("traje de baño") || variable.Equals("trajes de baño") || variable.Equals("traje") || variable.Equals("playa"))
                {
                    Response.Redirect("Traje.aspx");
                }

                if (variable.Equals("vestido") || variable.Equals("vestidos"))
                {
                    Response.Redirect("Vestido.aspx");
                }
            }
        }
    }
}