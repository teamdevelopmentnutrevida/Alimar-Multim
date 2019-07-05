using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TO
{
    public class TOIngreso
    {
        public string Correo { set; get; }
        public string Contrasenna { set; get; }

        public TOIngreso() { }

        public TOIngreso(string correo, string contr)
        {
            Correo = correo;
            Contrasenna = contr;
        }
    }
}
