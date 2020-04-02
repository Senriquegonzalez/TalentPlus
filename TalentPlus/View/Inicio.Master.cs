using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TalentPlus
{
   
    public partial class Inicio : System.Web.UI.MasterPage
    {
        public string a= "../Videos/simpsons.mp4";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void btn_buscar_Click1(object sender, EventArgs e)
        {
             a = "../Videos/" + txt_buscador.Text + ".mp4";
            //var videoFrame = new Literal();
            //videoFrame.Text = string.Format(@"<video width=""640"" height=""360"" controls>  <source src=""" + a + @"""type =""video/mp4"">         
                

       // </ video >");

           // Panel3.Controls.Add(videoFrame);            

        }

    }
}