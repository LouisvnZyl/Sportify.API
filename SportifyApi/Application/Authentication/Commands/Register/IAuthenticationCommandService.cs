using Application.Authentication.Common;

namespace Application.Authentication.Commands.Register
{
    public interface IAuthenticationCommandService
    {
        public AuthenticationResult Register(string firstName, string lastName, string email, string password);
    }
}
