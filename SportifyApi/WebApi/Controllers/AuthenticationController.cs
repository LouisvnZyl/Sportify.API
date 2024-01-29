using Microsoft.AspNetCore.Mvc;
using WebApi.Contracts.Authentication;
using MediatR;
using Application.Authentication.Commands.Register;
using Application.Authentication.Queries.Login;
using FluentValidation;

namespace WebApi.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class AuthenticationController : ControllerBase
    {
        private readonly ISender _mediator;
        private readonly IValidator<RegisterCommand> _registorCommandValidator;

        public AuthenticationController(ISender mediator, IValidator<RegisterCommand> registorCommandValidator)
        {
            _mediator = mediator;
            _registorCommandValidator = registorCommandValidator;
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

            var validationResult = await _registorCommandValidator.ValidateAsync(command);

            if (validationResult.IsValid)
            {
                var response = await _mediator.Send(command);
                return Ok(response);
            } else
            {
                var errors = validationResult.Errors.Select(e => e.ErrorMessage);
                return BadRequest(new { Errors = errors });
            }
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
