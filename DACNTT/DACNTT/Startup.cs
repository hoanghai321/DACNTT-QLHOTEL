using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(DACNTT.Startup))]
namespace DACNTT
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
    /*Mail server - Smtp
     SmtpClient

    Server Mail Transporter {CentOS / Qmail, SendMail}
     */
}
