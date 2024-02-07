using Application.Authentication.Common;
using MediatR;

namespace Application.Authentication.Queries.Login
{
    public class LoginQuery : IRequest<AuthenticationResult>
    {
        public string Email { get; set; } = string.Empty;
        public string Password { get; set; } = string.Empty;
    }
}
