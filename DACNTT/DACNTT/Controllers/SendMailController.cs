using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.Mvc;
using System.IO;
using DACNTT.Models;
using Humanizer;

namespace DACNTT.Controllers
{
    public class SendMailController : Controller
    {
        BigSchool_NhuHoangHaiEntities2 db = new BigSchool_NhuHoangHaiEntities2();
        // GET: SendMail
        public ActionResult sendmail()
        {
            return View();
        }
        [HttpPost]
        [Obsolete]
        public ActionResult sendmail(string Name, string Email, string subject, string message)
        {
            try
            {
                string mail = "nhuhoanghai1@gmail.com";
                string password = "@Hoanghai321";

                var loginInfo = new NetworkCredential(mail, password);
                var msg = new MailMessage();
                var smtpclient = new SmtpClient("smtp.gmail.com", 587); // server mail
                msg.From = new MailAddress(mail);
                msg.To.Add(new MailAddress("nhuhoanghai1900@gmail.com"));
                msg.ReplyTo = new MailAddress(Email);
                msg.Subject = Name + " - " + subject;
                msg.Body = message;
                msg.IsBodyHtml = true;

                smtpclient.EnableSsl = true;
                smtpclient.UseDefaultCredentials = false;
                smtpclient.Credentials = loginInfo;
                smtpclient.Send(msg);
                return RedirectToAction("SuccessEmail", "Home");
            }catch (Exception)
            {
                return RedirectToAction("FailedEmail", "Home");
            }
        }
    }
}