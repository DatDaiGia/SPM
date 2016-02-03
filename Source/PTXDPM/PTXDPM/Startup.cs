using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(PTXDPM.Startup))]
namespace PTXDPM
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
