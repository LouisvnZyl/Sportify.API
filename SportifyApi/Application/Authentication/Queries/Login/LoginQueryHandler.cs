using Application.Authentication.Common;
using Application.Common.Interfaces.Authentication;
using Application.Common.Persistence;
using Domain.Entities;
using MediatR;

namespace Application.Authentication.Queries.Login
{
    public class LoginQueryHandler : IRequestHandler<LoginQuery, AuthenticationResult>
    {
        private readonly IJwtTokenGenerator _jwtTokenGenerator;

        public LoginQueryHandler(IJwtTokenGenerator jwtTokenGenerator)
        { 
            _jwtTokenGenerator = jwtTokenGenerator;
        }

        private readonly IUserRepository _userRepository;

        public async Task<AuthenticationResult> Handle(LoginQuery query, CancellationToken cancellationToken)
        {
            if (_userRepository.GetUserByEmail(query.Email) is not User user)
            {
                throw new Exception("User does not exist");
            }

            if (user.Password != query.Password)
            {
                throw new Exception("Invalid Password");
            }

            var token = _jwtTokenGenerator.GenerateToken(user);


            return new AuthenticationResult
            {
                User = user,
                Token = token
            };
        }
    }
}
