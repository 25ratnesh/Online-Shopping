using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(onlineShopping.Startup))]
namespace onlineShopping
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
