using Application.Common.Wrappers;
using MediatR;

namespace Application.Authentication.Commands.Register
{
    public interface IRegisterCommand : IRequest<ApiResponse<AuthenticationResult>>
    {
        public string Email { get; set; }

        public string Username { get; set; }

        public string Password { get; set; }

        public string FirstName { get; set; }

        public string LastName { get; set; }

        public string Nickname { get; set; }

        public string PhoneNumber { get; set; }

        public DateTime DateOfBirth { get; set; }
    }
}
