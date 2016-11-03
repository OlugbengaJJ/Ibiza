using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ASP.NetSimpleWebApp.Startup))]
namespace ASP.NetSimpleWebApp
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
