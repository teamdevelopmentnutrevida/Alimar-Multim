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
            articulo blusa1 = new articulo("blusa", "path", "mujer", 10, "Blusa blanca, con lacitos", 5000, "Blusa de niña");
            articulo blusa2 = new articulo("blusa", "path", "mujer", 30, "Blusa blaca con tema de verano", 7000, "Blusa de mujer");
            articulo camisa1 = new articulo("camisa", "path", "hombre", 10, "Camisa blanca con rayas azules", 5000, "Camisa de niño");
            articulo camisa2 = new articulo("camisa", "path", "hombre", 30, "Camisa roja de manga larga", 7000, "Camisa de hombre");
            //short
            articulo short1 = new articulo("short", "path", "mujer", 10, "Short de niña azul con puntitos blancos", 6000, "Short de niña");
            articulo short2 = new articulo("short", "path", "mujer", 30, "Short de mujer negro con rayas blancas", 7000, "Short mujer");
            articulo short3 = new articulo("short", "path", "hombre", 10, "Short de niño color gris", 4000, "Short de niño");
            articulo short4 = new articulo("short", "path", "hombre", 30, "Short hombre color vino", 7500, "Short hombre");

            //pantalones
            articulo pantalon1 = new articulo("pantalon", "path", "mujer", 10, "Pantalón de nña color rosado", 10000, "Pantalón de niña");
            articulo pantalon2 = new articulo("pantalon", "path", "mujer", 30, "Patalón de mujer gris de vestir", 20000, "Pantalón de mujer");
            articulo pantalon3 = new articulo("pantalon", "path", "hombre", 10, "Pantalón de niño color beige", 10000, "Pantalón de niño");
            articulo pantalon4 = new articulo("pantalon", "path", "hombre", 30, "Pantalón de hombre gris de vestir", 20000, "Pantalón de hombre");

            //deportiva
            articulo deportiva1 = new articulo("deportiva", "path", "mujer", 30, "Outfit de mujer con top", 25000, "Outfit deportivo");
            articulo deportiva2 = new articulo("deportiva", "path", "mujer", 30, "Outfit de mujer con pantalon largo", 25000, "Outfit deportivo");

            //vestidos
            articulo vestido1 = new articulo("vestido", "path", "mujer", 30, "Vestido azul sin mangas", 30000, "Vestido mujer");
            articulo vestido2 = new articulo("vestido", "path", "mujer", 30, "Vestido azul sin mangas", 30000, "Vestido mujer");

            //trajebaño
            articulo traje1 = new articulo("traje", "path", "mujer", 30, "Traje de baño de mujer ", 15000, "Traje de baño de mujer");
            articulo traje2 = new articulo("traje", "path", "mujer", 30, "Traje de baño de mujer", 15000, "Traje de baño de mujer");

            //pijama
            articulo pijama1 = new articulo("pijama", "path", "mujer", 30, "Pijama con pantalon", 10000, "Traje de baño de mujer");
            articulo pijama2 = new articulo("pijama", "path", "mujer", 30, "Pijama con short", 10000, "Traje de baño de mujer");


            //agregar los articulos
            lista.Add(blusa1);
            lista.Add(blusa2);
            lista.Add(camisa1);
            lista.Add(camisa2);
            lista.Add(short1);
            lista.Add(short2);
            lista.Add(short3);
            lista.Add(short4);
            lista.Add(pantalon1);
            lista.Add(pantalon2);
            lista.Add(pantalon3);
            lista.Add(pantalon4);
            lista.Add(deportiva1);
            lista.Add(deportiva2);
            lista.Add(vestido1);
            lista.Add(vestido2);
            lista.Add(traje1);
            lista.Add(traje2);
            lista.Add(pijama1);
            lista.Add(pijama2);

            return lista;
        }
    }
}
