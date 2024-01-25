﻿using Application.Authentication.Common;
using MediatR;

namespace Application.Authentication.Commands.Register
{
    public class RegisterCommand : IRequest<AuthenticationResult>
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
    }
}
