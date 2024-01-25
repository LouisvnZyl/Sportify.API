using Application.Services.Authentication.Common;

namespace Application.Services.Authentication.Queries
{
    public interface IAuthenticationQueryService
    {
        public AuthenticationResult Login(string email, string password);
    }
}
