using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace ProyectoWeb.MiProyecto
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnValidar_Click(object sender, EventArgs e)
        {
            ValidarUsuarios v = new ValidarUsuarios();
            if (v.existeUsuario(txtUsuario.Text, txtContraseña.Text))
            {
                FormsAuthenticationTicket t = new FormsAuthenticationTicket
                (1, this.txtUsuario.Text, DateTime.Now, DateTime.Now.AddMinutes(10), true, v.TipoUsuario, FormsAuthentication.FormsCookiePath);
                string cifrado = FormsAuthentication.Encrypt(t);
                HttpCookie galleta = new HttpCookie(FormsAuthentication.FormsCookieName, cifrado);
                this.Response.Cookies.Add(galleta);
                string paginadestino = FormsAuthentication.GetRedirectUrl(this.txtUsuario.Text, true);
                Response.Redirect(paginadestino);

            }
            else
            {
                this.lblmensaje.Text = "Usuario y/o contraseña incorrectos";
            }
        }
    }
}