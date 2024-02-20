using Application.Common.Exceptions;
using Application.Common.Interfaces.Authentication;
using Application.Common.Persistence;
using Application.Common.Wrappers;
using Domain.Entities;
using MediatR;

namespace Application.Authentication.Commands.Login
{
    public class LoginCommandHandler : IRequestHandler<LoginCommand, ApiResponse<AuthenticationResult>>
    {
        private readonly IUserRepository _userRepository;
        private readonly IJwtTokenGenerator _jwtTokenGenerator;

        public LoginCommandHandler(IUserRepository userRepository, IJwtTokenGenerator jwtTokenGenerator)
        {
            _userRepository = userRepository;
            _jwtTokenGenerator = jwtTokenGenerator;
        }

        public async Task<ApiResponse<AuthenticationResult>> Handle(LoginCommand command, CancellationToken cancellationToken)
        {
            if (await _userRepository.GetUserByEmailAsync(command.Email, cancellationToken) is not User user)
            {
                throw new ApiException("User does not exist");
            }

            if (user.IsDeleted != null)
            {
                if (user.IsDeleted == true)
                {
                    throw new ApiException("User does not exist");
                }
            }

            if (user.Password != command.Password)
            {
                throw new ApiException("Invalid Password");
            }

            var token = _jwtTokenGenerator.GenerateToken(user);


            return new ApiResponse<AuthenticationResult>
            {
                Data = new AuthenticationResult
                {
                    UserId = user.Id.ToString(),
                    Token = token
                }
            };
        }
    }
}
