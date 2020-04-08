using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TalentPlus
{
    public partial class Registro : System.Web.UI.Page
    {
       
        ConexionPostgres conectando = new ConexionPostgres();
        
       

        protected void LoginButton_Click(object sender, EventArgs e)

        {

            if (conectando.verificarcorreo(Email.Text) >= 1)
            {

                FailureText.Text = "correo registrado";
            }
            else if (conectando.verificarusuario(UserName.Text) >= 1) 
            {
                FailureText.Text = "usuario registrado";
            }
            else
            {

                conectando.insertarusuario(UserName.Text, Email.Text, Password.Text);
                Response.Redirect("~/Datos/inicio.aspx");
            }
           
            
        }
    }
}