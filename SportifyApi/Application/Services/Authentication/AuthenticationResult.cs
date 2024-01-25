using Domain.Entities;

namespace Application.Services.Authentication
{
    public class AuthenticationResult
    {
        public User User { get; set; }
        public string Token { get; set; }
    }
}
