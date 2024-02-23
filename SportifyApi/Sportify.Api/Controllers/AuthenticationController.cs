using Application.Authentication;
using Application.Authentication.Commands.Login;
using Application.Authentication.Commands.Register;
using MediatR;
using Microsoft.AspNetCore.Mvc;

namespace WebApi.Controllers;

[ApiController]
[Route("[controller]")]
public class AuthenticationController : ControllerBase
{
    private readonly ISender _sender;

    public AuthenticationController(ISender sender)
    {
        _sender = sender;
    }

    [HttpPost("register")]
    public Task<AuthenticationResult> Register(RegisterCommand command)
    {
        return _sender.Send(command);
    }

    [HttpPost("login")]
    public async Task<AuthenticationResult> Login(LoginCommand command)
    {
        return await _sender.Send(command);
    }
}
