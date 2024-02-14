using Application.Authentication.Commands.Login;
using Application.Authentication.Commands.Register;
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
            var command = new RegisterCommand
            {
                FirstName = request.FirstName,
                LastName = request.LastName,
                Email = request.Email,
                Password = request.Password
            };

            var response = await _mediator.Send(command);
            return Ok(response.Data);
        }

        [HttpPost("login")]
        public async Task<IActionResult> Login(LoginRequest request)
        {
            var command = new LoginCommand
            {
                Email = request.Email,
                Password = request.Password
            };

            var response = await _mediator.Send(command);
            return Ok(response.Data);
        }
    }
}
