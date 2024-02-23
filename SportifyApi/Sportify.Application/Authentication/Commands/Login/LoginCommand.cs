namespace Application.Authentication.Commands.Login;

public class LoginCommand : IRequest<AuthenticationResult>
{
    public string Email { get; set; } = string.Empty;
    public string Password { get; set; } = string.Empty;
}
