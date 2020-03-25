using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Npgsql; // para conectar a la BD


namespace TalentPlus
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        ConexionPostgres conectando = new ConexionPostgres();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        

        protected void Button2_Click1(object sender, EventArgs e)
        {
            GridView1.DataSource = conectando.Consulta();
            GridView1.DataBind();

        }

        

        protected void Button3_Click(object sender, EventArgs e)
        {
            string a = "https://www.youtube.com/embed/9bi9eDZUJPQ";
            var videoFrame = new Literal();
            videoFrame.Text = string.Format(@"<iframe width=""628"" height=""374"" src=""{0}"" frameborder=""0"" allowfullscreen></iframe>", a);
            Panel1.Controls.Add(videoFrame);

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            conectando.Conectar();
        }
    }
}