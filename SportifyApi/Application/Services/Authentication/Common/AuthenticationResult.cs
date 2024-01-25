using Domain.Entities;

namespace Application.Services.Authentication.Common
{
    public class AuthenticationResult
    {
        public User User { get; set; }
        public string Token { get; set; }
    }
}
