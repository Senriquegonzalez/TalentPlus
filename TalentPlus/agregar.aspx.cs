using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TalentPlus
{
    public partial class agregar : System.Web.UI.Page
    {
        ConexionPostgres conectando = new ConexionPostgres();
        String ruta2;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_agregar_Click(object sender, EventArgs e)
        {
            string ruta = Server.MapPath("~/Videos/");
            ruta+= FileUpload2.FileName;
            FileUpload2.SaveAs(ruta);
            ruta2 = ruta;
            string nombrelocal = "../Videos/" + FileUpload2.FileName;
            conectando.insertar(ruta,nombrelocal);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string a = "../Videos/"+txt_buscador.Text+".mp4";                                                                                                                  
            var videoFrame = new Literal();
            videoFrame.Text = string.Format(@"<video width=""640"" height=""360"" controls>  <source src="""+a+@"""type =""video/mp4"">         
                

        </ video >"); 
            Panel1.Controls.Add(videoFrame);
        }

        protected void txt_buscador_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
