using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(AppBackToReality.Startup))]
namespace AppBackToReality
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }


    }
}
