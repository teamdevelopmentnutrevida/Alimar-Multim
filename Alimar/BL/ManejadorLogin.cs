using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO;
using TO;


namespace BL
{
    public class ManejadorLogin
    {
        DAOIngreso d = new DAOIngreso();
        public Ingreso TraerDatos()
        {
            TOIngreso i = d.TraerIngreso();
           if(i != null)
            {
                return new Ingreso(i.Correo, i.Contrasenna);
            }
            else
            {
                return null;
            }
        }
    }
}
