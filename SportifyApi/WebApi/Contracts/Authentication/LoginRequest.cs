using Application.Authentication.Commands.Login;

namespace WebApi.Contracts.Authentication
{
    public interface LoginRequest : ILoginCommand
    {
        string Email { get; set; }
        string Password { get; set; }
    }
}
