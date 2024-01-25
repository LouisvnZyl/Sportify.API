using Application.Authentication.Commands.Register;
using Application.Authentication.Queries.Login;
using Microsoft.AspNetCore.Mvc;
using WebApi.Contracts.Authentication;

namespace WebApi.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class AuthenticationController : ControllerBase
    {
        private readonly IAuthenticationCommandService _authenticationCommandService;
        private readonly IAuthenticationQueryService _authenticationQueryService;

        public AuthenticationController(IAuthenticationCommandService authenticationCommandService, IAuthenticationQueryService authenticationQueryService)
        {
            _authenticationCommandService = authenticationCommandService;
            _authenticationQueryService = authenticationQueryService;
        }

        [HttpPost("login")]
        public IActionResult Login(LoginRequest request)
        {
            var authResult = _authenticationQueryService.Login(request.Email, request.Password);

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
            var authResult = _authenticationCommandService.Register(request.FirstName, request.LastName, request.Email, request.Password);

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
