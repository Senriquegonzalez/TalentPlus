using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Net.Mail;

namespace TalentPlus
{
    public class Correo
    {
        MailMessage m = new MailMessage();
        SmtpClient smtp = new SmtpClient();

        public bool enviarCorreo(String correoUsuario, String mensaje)
        {
            try
            {
                m.From =new  MailAddress ("TalentPlus.Cundi@gmail.com");
                m.To.Add(new MailAddress(correoUsuario));
                m.Body = mensaje;

                //confuguracion del servidor de correo
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;//puerto de gmail
                smtp.Credentials = new NetworkCredential("TalentPlus.Cundi@gmail.com", "123456*a");
                smtp.EnableSsl = true; //protocolo de seguridad
                smtp.Send(m);
                    return true;
            }
            catch (Exception e)
            {
                return false;
                throw;
                
            }

            
           
        }

       

       
    }
    

}