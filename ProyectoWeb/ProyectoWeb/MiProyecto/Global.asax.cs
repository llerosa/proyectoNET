using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Web.Security;
using ProyectoWeb;

namespace ProyectoWeb
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            AuthConfig.RegisterOpenAuth();
            RouteConfig.RegisterRoutes(RouteTable.Routes);
        }

        void Application_End(object sender, EventArgs e)
        {
            //  Code that runs on application shutdown

        }

        void Application_Error(object sender, EventArgs e)
        {
            // Code that runs when an unhandled error occurs

        }

        protected void Application_AutenticateRequest(object sender, EventArgs e)
        {
            if (HttpContext.Current.User != null)
            {
                if (HttpContext.Current.User.Identity.IsAuthenticated)
                {
                    if (HttpContext.Current.User.Identity is FormsIdentity)
                    {
                        FormsIdentity identidad = (FormsIdentity)HttpContext.Current.User.Identity;
                        FormsAuthenticationTicket t = identidad.Ticket;
                        string tipousuario = t.UserData;
                        string[] roles = new string[]{tipousuario};
                        System.Security.Principal.GenericPrincipal usuario = new System.Security.Principal.GenericPrincipal(identidad, roles);
                        HttpContext.Current.User = usuario;

                    }
                }
            }
        }
    }
}
