using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(PheoBakery.Startup))]
namespace PheoBakery
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
