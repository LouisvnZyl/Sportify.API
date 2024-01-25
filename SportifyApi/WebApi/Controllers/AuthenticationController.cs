using Application.Services.Authentication;
using Microsoft.AspNetCore.Mvc;
using WebApi.Contracts.Authentication;

namespace WebApi.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class AuthenticationController : ControllerBase
    {
        private readonly IAuthenticationService _authenticationService;

        public AuthenticationController(IAuthenticationService authenticationService)
        {
            _authenticationService = authenticationService;
        }

        [HttpPost("login")]
        public IActionResult Login(LoginRequest request)
        {
            var authResult = _authenticationService.Login(request.Email, request.Password);

            var response = new AuthenticationResponse
            {
                Id = authResult.User.Id,
                FirstName = authResult.User.FirstName,
                LastName = authResult.User.LastName,
                Email = authResult.User.Email,
                Token = authResult.Token
            };

            return Ok(response);
        }

        [HttpPost("register")]
        public IActionResult Register(RegisterRequest request)
        {
            var authResult = _authenticationService.Register(request.FirstName, request.LastName, request.Email, request.Password);

            var response = new AuthenticationResponse
            {
                Id = authResult.User.Id,
                FirstName = authResult.User.FirstName,
                LastName = authResult.User.LastName,
                Email = authResult.User.Email,
                Token = authResult.Token
            };

            return Ok(response);
        }
    }
}
