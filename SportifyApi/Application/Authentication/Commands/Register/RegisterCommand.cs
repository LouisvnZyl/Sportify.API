using Application.Authentication.Common;
using MediatR;

namespace Application.Authentication.Commands.Register
{
    public class RegisterCommand : IRequest<AuthenticationResult>
    {
        public string Email { get; set; } = string.Empty;

        public string Username { get; set; } = string.Empty;

        public string Password { get; set; } = string.Empty;

        public string FirstName { get; set; } = string.Empty;

        public string LastName { get; set; } = string.Empty;

        public string Nickname { get; set; } = string.Empty;

        public string PhoneNumber { get; set; } = string.Empty;

        public DateTime DateOfBirth { get; set; }
    }
}
