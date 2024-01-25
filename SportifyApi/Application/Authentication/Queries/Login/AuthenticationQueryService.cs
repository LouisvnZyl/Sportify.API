using Application.Authentication.Common;
using Application.Common.Interfaces.Authentication;
using Application.Common.Persistence;
using Domain.Entities;

namespace Application.Authentication.Queries.Login
{
    public class AuthenticationQueryService : IAuthenticationQueryService
    {
        private readonly IJwtTokenGenerator _jwtTokenGenerator;
        private readonly IUserRepository _userRepository;

        public AuthenticationQueryService(IJwtTokenGenerator jwtTokenGenerator, IUserRepository userRepository)
        {
            _jwtTokenGenerator = jwtTokenGenerator;
            _userRepository = userRepository;
        }

        public AuthenticationResult Login(string email, string password)
        {
            if (_userRepository.GetUserByEmail(email) is not User user)
            {
                throw new Exception("User does not exist");
            }

            if (user.Password != password)
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
