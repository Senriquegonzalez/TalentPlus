using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace TalentPlus.Controller
{
    public class video
    {
        ConexionPostgres conecxion = new ConexionPostgres();
        public DataTable tablavideo;
        public string nombre;


        public void llenartabla()
        {
            tablavideo = conecxion.Consulta();           
           
           
        }
    }
}