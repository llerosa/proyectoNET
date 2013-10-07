using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProyectoWeb.MiProyecto
{
    public class ValidarUsuarios
    {
        contextoTallerDataContext c = new contextoTallerDataContext();
        public string TipoUsuario{get;set;}

        public bool existeUsuario(string usuario, string contrasena)
        {
            bool b = false;
            var consulta = from datos in c.usuariosYcontrasenas
                           where datos.Usuario == usuario && datos.Contrasena == contrasena
                           select datos;
            if (consulta.Count() != 0)
            {
                b = true;
                TipoUsuario = "conprivilegios";
            }

            return b;
        }
    }
}