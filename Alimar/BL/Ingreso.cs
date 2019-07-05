using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BL
{
    public class Ingreso
    {
        public string Correo { set; get; }
        public string Contrasenna { set; get; }

        public Ingreso() { }

        public Ingreso(string correo, string contr)
        {
            Correo = correo;
            Contrasenna = contr;
        }
    }
}
