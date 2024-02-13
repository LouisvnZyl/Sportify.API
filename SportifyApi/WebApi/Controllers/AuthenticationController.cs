using MediatR;
using Microsoft.AspNetCore.Mvc;
using WebApi.Contracts.Authentication;

namespace WebApi.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class AuthenticationController : ControllerBase
    {
        private readonly ISender _mediator;

        public AuthenticationController(ISender mediator)
        {
            _mediator = mediator;
        }

        [HttpPost("register")]
        public async Task<IActionResult> Register(RegisterRequest request)
        {
            var response = await _mediator.Send(request);
            return Ok(response.Data);
        }

        [HttpPost("login")]
        public async Task<IActionResult> Login(LoginRequest request)
        {
            var response = await _mediator.Send(request);
            return Ok(response.Data);
        }
    }
}
