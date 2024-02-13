using Application.Common.Exceptions;
using Application.Common.Interfaces.Authentication;
using Application.Common.Persistence;
using Application.Common.Wrappers;
using Domain.Entities;
using MediatR;

namespace Application.Authentication.Commands.Register
{
    public class RegisterCommandHandler : IRequestHandler<IRegisterCommand, ApiResponse<AuthenticationResult>>
    {
        private readonly IUserRepository _userRepository;
        private readonly IJwtTokenGenerator _jwtTokenGenerator;

        public RegisterCommandHandler(IJwtTokenGenerator jwtTokenGenerator, IUserRepository userRepository)
        {
            _jwtTokenGenerator = jwtTokenGenerator;
            _userRepository = userRepository;
        }

        public async Task<ApiResponse<AuthenticationResult>> Handle(IRegisterCommand command, CancellationToken cancellationToken)
        {
            if (await _userRepository.GetUserByEmailAsync(command.Email, cancellationToken) is not null)
            {
                throw new ApiException("User not found");
            }

            var player = new Player
            {
                Id = Guid.NewGuid(),
                FirstName = command.FirstName,
                LastName = command.LastName,
                Nickname = command.Nickname,
                PhoneNumber = command.PhoneNumber,
                DateOfBirth = command.DateOfBirth,
                CreatedBy = command.Email,
                ModifiedBy = command.Email,
                CreatedDate = DateTime.UtcNow,
                ModifiedDate = DateTime.UtcNow,
                IsDeleted = false
            };

            var user = new User
            {
                Id = Guid.NewGuid(),
                Username = command.Username,
                Email = command.Email,
                Password = command.Password,
                CreatedBy = command.Email,
                ModifiedBy = command.Email,
                CreatedDate = DateTime.UtcNow,
                ModifiedDate = DateTime.UtcNow,
                IsDeleted = false,
                Player = player
            };

            await _userRepository.CreateAsync(user, cancellationToken);

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
