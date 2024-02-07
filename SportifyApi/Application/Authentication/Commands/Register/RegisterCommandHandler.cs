using Application.Authentication.Common;
using Application.Common.Errors;
using Application.Common.Interfaces.Authentication;
using Application.Common.Persistence;
using Domain.Entities;
using MediatR;

namespace Application.Authentication.Commands.Register
{
    public class RegisterCommandHandler : IRequestHandler<RegisterCommand, AuthenticationResult>
    {
        private readonly IUserRepository _userRepository;
        private readonly IPlayerRepository _playerRepository;
        private readonly IJwtTokenGenerator _jwtTokenGenerator;

        public RegisterCommandHandler(IJwtTokenGenerator jwtTokenGenerator, IUserRepository userRepository, IPlayerRepository playerRepository)
        {
            _jwtTokenGenerator = jwtTokenGenerator;
            _userRepository = userRepository;
            _playerRepository = playerRepository;
        }

        public async Task<AuthenticationResult> Handle(RegisterCommand command, CancellationToken cancellationToken)
        {
            if (await _userRepository.GetUserByEmailAsync(command.Email) is not null)
            {
                throw new DuplicateEmailException();
            }

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
            };

            await _userRepository.AddAsync(user);

            var player = new Player
            {
                Id = Guid.NewGuid(),
                UserId = user.Id,
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

            await _playerRepository.AddAsync(player);

            var token = _jwtTokenGenerator.GenerateToken(user);

            return new AuthenticationResult
            {
                UserId = user.Id.ToString(),
                Token = token
            };
        }
    }
}
