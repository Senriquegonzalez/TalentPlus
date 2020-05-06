using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TalentPlus.Controller;


namespace TalentPlus
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public int video1;
        public int video2;
        public int video3;
        public int video4;
        public int video5;
       
        public string videocargado="../Videos/simpsons.mp4";
        public video tablavideo = new video();
        ConexionPostgres correo = new ConexionPostgres();
        protected void Page_Load(object sender, EventArgs e)
        {

            tablavideo.llenartabla();
            generaraleatorios();

        }

       

        protected void Button5_Click(object sender, EventArgs e)
        {
           
            Response.Redirect("~/agregar.aspx");

        }

        public void generaraleatorios()
        {
            video1 = new Random().Next(0, correo.totalvideos());
            video2 = new Random().Next(0, correo.totalvideos());
            video3 = new Random().Next(0, correo.totalvideos());
            video4 = new Random().Next(0, correo.totalvideos());
            video5 = new Random().Next(0, correo.totalvideos());

        }

       
    }
}