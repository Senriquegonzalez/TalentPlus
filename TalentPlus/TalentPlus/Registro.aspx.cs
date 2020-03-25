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
        private string mail;
        private int codigo;
       

        protected void LoginButton_Click(object sender, EventArgs e)

        {
            
            
                conectando.insertarusuario(UserName.Text, mail, Password.Text);
           
            
        }
    }
}