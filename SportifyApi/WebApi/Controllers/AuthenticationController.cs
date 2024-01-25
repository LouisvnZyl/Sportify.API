using Microsoft.AspNetCore.Mvc;
using WebApi.Contracts.Authentication;
using MediatR;
using Application.Authentication.Commands.Register;
using Application.Authentication.Queries.Login;

namespace WebApi.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class AuthenticationController : ControllerBase
    {
        private readonly IMediator _mediator;

        public AuthenticationController(IMediator mediator)
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

            return Ok(response);
        }

        [HttpPost("login")]
        public async Task<IActionResult> Login(LoginRequest request)
        {
            var query = new LoginQuery
            {
                Email = request.Email,
                Password = request.Password
            };

            var response = await _mediator.Send(query);

            return Ok(response);
        }
    }
}
