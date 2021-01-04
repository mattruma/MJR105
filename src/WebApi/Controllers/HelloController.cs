using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;

namespace WebApi.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class HelloController : ControllerBase
    {
        private readonly IConfiguration _configuration;

        public HelloController(
            IConfiguration configuration)
        {
            _configuration = configuration;
        }

        [HttpGet]
        public string Get()
        {
            return $"{_configuration.GetValue<string>("InstanceName")} says, \"Hello, world!\"";
        }
    }
}
