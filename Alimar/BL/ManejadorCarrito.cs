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
        public static List<Compra> lisCompra = new List<Compra>();

        public List<Compra> getListaCompra()
        {
            return lisCompra;
        }
        public void AgregarListaCompra(articulo art, int cant)
        {
            lisCompra.Add(new Compra(art, cant));
        }

        public void Sumar(string pat)
        {
            foreach (Compra c in lisCompra)
            {
                string p = c.articulo.path;
                if (p.CompareTo(pat) >= 0)
                {
                    int cant = c.cantidad;
                    c.cantidad = cant + 1;
                }
            }
        }
        public void Restar(string pat)
        {
            foreach (Compra c in lisCompra)
            {
                string p = c.articulo.path;
                if (p.CompareTo(pat) >= 0)
                {
                    if(c.cantidad >= 1)
                    {
                        int cant = c.cantidad;
                        c.cantidad = cant - 1;
                    }
                }
            }
        }

        public void restaurarLista()
        {
            lisCompra = new List<Compra>();
        }

        public void EliminarArtCompra(string cod)
        {
            
            foreach (Compra c in lisCompra)
            {
                string p = c.articulo.path;
                if (p.CompareTo(cod) >= 0)
                {
                    lisCompra.Remove(c);
                }
            }
        }

        
        public void AgregarArticulo(articulo a)
        {
            if(a != null)
            {
                lisCompra.Add(new Compra(a,1));
            }
        }
        

        
    }
}
