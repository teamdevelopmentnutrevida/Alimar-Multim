using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using TO;

namespace DAO
{
    public class DAOArticulo
    {

        SqlConnection conexion = new SqlConnection(Properties.Settings.Default.conexion);

        public TOArticulo recuperarArticulo(String path) {

            String query = "select * from Articulo where Path = @path";

            SqlCommand cmd = new SqlCommand(query, conexion);

            cmd.Parameters.AddWithValue("@path",path);

            TOArticulo to = new TOArticulo();

            SqlDataReader lector;

            if (conexion.State != ConnectionState.Open)
            {
                conexion.Open();
            }

            lector = cmd.ExecuteReader();

            if (lector.HasRows)
            {
                while (lector.Read())
                {

                    to = new TOArticulo(lector["Tipo"].ToString(), lector["Path"].ToString(), lector["Genero"].ToString(), double.Parse(lector["Edad"].ToString()), lector["Descripcion"].ToString(), double.Parse(lector["Precio"].ToString()), lector["Nombre"].ToString());

                }
                conexion.Close();
                return to;
            }
            else
            {
                conexion.Close();
                return null;
            }
        }
    }
}
