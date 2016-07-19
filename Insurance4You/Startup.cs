using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Insurance4You.Startup))]
namespace Insurance4You
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
            app.MapSignalR();
        }
    }
}
