using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BL
{
    public class ManejadorArticulo
    {
        public List<articulo> traerLista() {
            List<articulo> lista = new List<articulo>();

            //blusas camiseta
            articulo blusa = new articulo("blusa", "path", "mujer", 10, "Blusa blanca, con lacitos", 5000, "Blusa de niña");
            articulo blusa2 = new articulo("blusa", "path", "mujer", 30, "", 5000, "Blusa de mujer");
            articulo blusa3 = new articulo("camisa", "path", "hombre", 10, "", 5000, "Blusa de niña");
            //short

            //pantalones

            //deportiva

            //vestidos

            //trajebaño

            //pijama



            return lista;
        }
    }
}
