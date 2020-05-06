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
        public int totalvideos()
        {
            con.Open();
            string query = " SELECT COUNT(*) FROM \"video\"";
            NpgsqlCommand ejecutor = new NpgsqlCommand(query, con);
            ejecutor.ExecuteNonQuery();
            int a = Convert.ToInt32(ejecutor.ExecuteScalar());
            con.Close();
            return a;



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
            con.Close();

        }
        public void insertarusuario(string nombre, string email, string pass )
        {
            con.Open();
            string query = "SELECT agregarusuario('" + nombre + "','" + email + "','" + pass + "')";
            NpgsqlCommand ejecutor = new NpgsqlCommand(query, con);
            ejecutor.ExecuteNonQuery();
            con.Close();

        }

        public  int verificarcorreo(string correo) {
            con.Open();
            string query = "SELECT validarcorreo('" + correo + "')";
            NpgsqlCommand ejecutor = new NpgsqlCommand(query, con);
            ejecutor.ExecuteNonQuery();
            int a= Convert.ToInt32(ejecutor.ExecuteScalar());
            con.Close();
            return a;
           



        }
        public int verificarusuario(string usuario)
        {
            con.Open();
            string query = "SELECT validarusuari('" + usuario + "')";
            NpgsqlCommand ejecutor = new NpgsqlCommand(query, con);
            ejecutor.ExecuteNonQuery();
            int a = Convert.ToInt32(ejecutor.ExecuteScalar());
            con.Close();
            return a;
            

        }
        public int login(string usuario , string pass)
        {
            con.Open();
            string query = "SELECT login('" + usuario + "','" + pass + "')";
            NpgsqlCommand ejecutor = new NpgsqlCommand(query, con);
            ejecutor.ExecuteNonQuery();
            int a = Convert.ToInt32(ejecutor.ExecuteScalar());
            con.Close();
            return a;


        }

        public DataTable recuperarcontrasena(string mail)
        {
            con.Open();
            string query = "select * from \"usuario\" where email='" + mail + "'";
            NpgsqlCommand conector = new NpgsqlCommand(query, con);
            NpgsqlDataAdapter datos = new NpgsqlDataAdapter(conector);
            DataTable tabla = new DataTable();
            datos.Fill(tabla);
            con.Close();
            return tabla;



        }


    }
}