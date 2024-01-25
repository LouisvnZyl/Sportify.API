﻿using Application.Common.Interfaces.Authentication;

namespace Application.Services.Authentication
{
    public class AuthenticationService : IAuthenticationService
    {
        private readonly IJwtTokenGenerator _jwtTokenGenerator;

        public AuthenticationService(IJwtTokenGenerator jwtTokenGenerator)
        {
            _jwtTokenGenerator = jwtTokenGenerator;
        }

        public AuthenticationResult Login(string email, string password)
        {
            return new AuthenticationResult
            {
                Id = Guid.NewGuid(),
                Email = email
            };
        }

        public AuthenticationResult Register(string firstName, string lastName, string email, string password)
        {
            Guid userId = Guid.NewGuid();

            var token = _jwtTokenGenerator.GenerateToken(userId, firstName, lastName);

            return new AuthenticationResult
            {
                Id = userId,
                FirstName = firstName,
                LastName = lastName,
                Email = email,
                Token = token
            };
        }
    }
}
