using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.Extensions.Configuration;

namespace WebApp.Pages
{
    public class IndexModel : PageModel
    {
        private readonly IConfiguration _configuration;

        public IndexModel(
            IConfiguration configuration)
        {
            _configuration = configuration;
        }

        public string InstanceName { get; private set; }

        public void OnGet()
        {
            this.InstanceName = _configuration.GetValue<string>("InstanceName");
        }
    }
}
