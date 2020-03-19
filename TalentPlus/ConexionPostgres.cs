using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Npgsql; // para conectar a la BD
using System.Windows;
using System.Windows.Forms;
using System.Data;

namespace TalentPlus
{
    public class ConexionPostgres
    {
        NpgsqlConnection con = new NpgsqlConnection("Server=localhost; User Id=postgres;Password=123;Database = TalentPlus");
        public void Conectar() 
        {
            con.Open();
            MessageBox.Show("Conectado");
        }
        public void desconectar()
        {
            con.Close();

            MessageBox.Show("desconectado");
        }
        public DataTable Consulta()
        { 
            string query ="select * from \"video\"";
            NpgsqlCommand conector = new NpgsqlCommand(query, con);
            NpgsqlDataAdapter datos = new NpgsqlDataAdapter(conector);
            DataTable tabla = new DataTable();
            datos.Fill(tabla);
            return tabla;


        }
        public void insertar(String ruta ,String local)
        {
            con.Open();
            string query = "INSERT INTO video(nombre,nombrelocal) VALUES( '"+ruta+ "','" + local + "')";
        NpgsqlCommand ejecutor = new NpgsqlCommand(query, con);
            ejecutor.ExecuteNonQuery();
        }


    }
}