using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TalentPlus
{
   
    public partial class InicioLogin : System.Web.UI.MasterPage
    {
        public string a = "../Videos/simpsons.mp4";
        protected void Page_Load(object sender, EventArgs e)
        {
            usuario.Text = Convert.ToString(Session["usuario"]);
        }

        protected void btn_buscar_Click1(object sender, EventArgs e)
        {
            a = "../Videos/" + txt_buscador.Text + ".mp4";
        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {

        }

        protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
        {

        }

        protected void Menu1_MenuItemClick1(object sender, MenuEventArgs e)
        {

        }

        protected void Menu1_MenuItemClick2(object sender, MenuEventArgs e)
        {

        }
    }
}