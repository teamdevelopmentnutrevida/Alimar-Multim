using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TO;

namespace DAO
{
    public class DAOIngreso
    {
        SqlConnection conexion = new SqlConnection(Properties.Settings.Default.conexion);

        public TOIngreso TraerIngreso()
        {
            string query = "select * from Login;";
            SqlCommand cmd = new SqlCommand(query, conexion);
            TOIngreso to = new TOIngreso();
            SqlDataReader lector;
            if (conexion.State != ConnectionState.Open)
            {
                conexion.Open();
            }
            lector = cmd.ExecuteReader();
            if (lector.HasRows)
            {
                lector.Read();
                 to = new TOIngreso(lector["Correo"].ToString(), lector["Contrasenna"].ToString());
                conexion.Close();
                return to;
            }else
            {
                conexion.Close();
                return null;
            }
        }
    }
}
