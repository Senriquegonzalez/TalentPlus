using System;
using System.Collections.Generic;
using System.Data;
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
                Session["usuario"] = Login1.UserName;
                Response.Redirect("~/Datos/iniciologin.aspx");

            }
            
            else
            {

                Login1.FailureText = "El intento de conexión no fue correcto. Inténtelo de nuevo.";
            }
        }

        protected void btncorreo_Click(object sender, EventArgs e)
        {
            string usuario;
            string contraseña;
            DataTable tabla = conectando.recuperarcontrasena(txtcorreo.Text);
            try
            {
                DataRow row = tabla.Rows[0];

                usuario = row["usuari"].ToString();
                contraseña = row["pass"].ToString();
                Correo correo = new Correo();
                correo.enviarCorreo(txtcorreo.Text, "usuario: " + usuario + "   contraseña: " + contraseña + " ");
                FailureText.Text = "correo enviado";
            }
            catch (System.IndexOutOfRangeException)
            {
                FailureText.Text = "el correo no se encuentra registrado";

            }
        }
    }
}