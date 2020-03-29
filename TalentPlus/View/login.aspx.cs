using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TalentPlus
{
    public partial class login : System.Web.UI.Page
    {
        ConexionPostgres conectando = new ConexionPostgres();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            if (conectando.login(Login1.UserName, Login1.Password) == 1)
            {
                
                Response.Redirect("~/iniciologin.aspx");

            }
            
            else
            {

                Login1.FailureText = "El intento de conexión no fue correcto. Inténtelo de nuevo.";
            }
        }

        
    }
}