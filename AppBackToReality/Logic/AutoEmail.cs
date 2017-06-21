using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;

namespace AppBackToReality.Logic
{
    public class AutoEmail
    {
        public static void Send(string recipient, string subject, string body)
        {
            MailMessage message = new MailMessage();

            message.To.Add(new MailAddress(recipient));
            message.Subject = subject;
            message.Body = body;

            SmtpClient client = new SmtpClient();
            client.Send(message);
        }

    }
}