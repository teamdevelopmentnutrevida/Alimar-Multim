using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BL
{
    public class ManejadorCarrito
    {
        public static List<articulo> lista= new List<articulo>();

        public List<articulo> getLista()
        {
            return lista;
        }

        public void AgregarArticulo(articulo a)
        {
            if(a != null)
            {
                lista.Add(a);
            }
        }
        public void IniciarLista()
        {
            lista = new List<articulo>();
        }
    }
}
