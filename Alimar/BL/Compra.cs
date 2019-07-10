using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BL
{
    public class Compra
    {
        public articulo articulo { set; get; }
        public int cantidad { set; get; }

        public Compra() { }

        public Compra(articulo artic, int cant)
        {
            articulo = artic;
            cantidad = cant;
        }
    }
}
