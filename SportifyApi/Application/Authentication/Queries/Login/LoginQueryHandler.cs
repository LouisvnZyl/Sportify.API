using Application.Authentication.Common;
using Application.Common.Exceptions;
using Application.Common.Interfaces.Authentication;
using Application.Common.Persistence;
using Application.Common.Wrappers;
using Domain.Entities;
using MediatR;

namespace Application.Authentication.Queries.Login
{
    public class LoginQueryHandler : IRequestHandler<LoginQuery, ApiResponse<AuthenticationResult>>
    {
        private readonly IUserRepository _userRepository;
        private readonly IJwtTokenGenerator _jwtTokenGenerator;

        public LoginQueryHandler(IUserRepository userRepository, IJwtTokenGenerator jwtTokenGenerator)
        {
            _userRepository = userRepository;
            _jwtTokenGenerator = jwtTokenGenerator;
        }

        public async Task<ApiResponse<AuthenticationResult>> Handle(LoginQuery query, CancellationToken cancellationToken)
        {
            if (await _userRepository.GetUserByEmailAsync(query.Email, cancellationToken) is not User user)
            {
                throw new ApiException("User does not exist");
            }

            if (user.IsDeleted)
            {
                throw new ApiException("User does not exist");
            }

            if (user.Password != query.Password)
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
