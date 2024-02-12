using Application.Authentication.Common;
using Application.Common.Wrappers;
using MediatR;

namespace Application.Authentication.Queries.Login
{
    public class LoginQuery : IRequest<ApiResponse<AuthenticationResult>>
    {
        public string Email { get; set; } = string.Empty;
        public string Password { get; set; } = string.Empty;
    }
}
