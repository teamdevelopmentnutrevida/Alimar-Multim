using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BL
{
    public class articulo
    {
        //permite crear un objeto de articulo

        public articulo(string tipo, string path, string genero, double edad, string descipcion, double precio, string nombre)
        {
            this.tipo = tipo;
            this.path = path;
            this.genero = genero;
            this.edad = edad;
            this.descipcion = descipcion;
            this.precio = precio;
            this.nombre = nombre;
        }

        //propiedades de la clase
        public string tipo { set; get; }
        public string path { set; get; }
        public string genero { set; get; }
        public double edad { set; get; }
        public string descipcion { set; get; }
        public double precio { set; get; }
        public string nombre { set; get; }

        public articulo()
        {
        }

    }
}
