using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TalentPlus.Controller;

namespace TalentPlus.View
{
    public partial class vervideo : System.Web.UI.Page
    {
        public string variablevideo;
        public int video1;
        public int video2;
        public int video3;
        public int video4;
        public int video5;
        public video videoaleatorio = new video();
        ConexionPostgres conexion = new ConexionPostgres();
        protected void Page_Load(object sender, EventArgs e)
        {
            videoaleatorio.llenartabla();
            generaraleatorios();
            string videoes = Request.QueryString["videoid"].ToString();
            variablevideo = videoes;
            




        }

        public void generaraleatorios()
        {
            video1 = new Random().Next(0, conexion.totalvideos());
            video2 = new Random().Next(0, conexion.totalvideos());
            video3 = new Random().Next(0, conexion.totalvideos());
            video4 = new Random().Next(0, conexion.totalvideos());
            video5 = new Random().Next(0, conexion.totalvideos());

        }

        
        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

        }
    }
}