﻿using Application.Common.Wrappers;
using MediatR;

namespace Application.Authentication.Commands.Login
{
    public class LoginCommand : IRequest<ApiResponse<AuthenticationResult>>
    {
        public string Email { get; set; }
        public string Password { get; set; } 
    }
}
