using Application.Authentication.Common;

namespace Application.Authentication.Queries.Login
{
    public interface IAuthenticationQueryService
    {
        public AuthenticationResult Login(string email, string password);
    }
}
