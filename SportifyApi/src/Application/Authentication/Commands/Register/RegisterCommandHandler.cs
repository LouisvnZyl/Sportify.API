using Application.Common.Interfaces.Authentication;
using Application.Common.Persistence;
using Domain.Entities;

namespace Application.Authentication.Commands.Register;

public class RegisterCommandHandler : IRequestHandler<RegisterCommand, AuthenticationResult>
{
    private readonly IUserRepository _userRepository;
    private readonly IJwtTokenGenerator _jwtTokenGenerator;

    public RegisterCommandHandler(IJwtTokenGenerator jwtTokenGenerator, IUserRepository userRepository)
    {
        _jwtTokenGenerator = jwtTokenGenerator;
        _userRepository = userRepository;
    }

    public async Task<AuthenticationResult> Handle(RegisterCommand request, CancellationToken cancellationToken)
    {
        var existingUser = await _userRepository.GetUserByEmailAsync(request.Email, cancellationToken);

        Guard.Against.Null(existingUser, "User with this email already exists");

        var player = new Player
        {
            Id = Guid.NewGuid(),
            FirstName = request.FirstName,
            LastName = request.LastName,
            Nickname = request.Nickname,
            PhoneNumber = request.PhoneNumber,
            DateOfBirth = request.DateOfBirth,
            CreatedBy = request.Email,
            ModifiedBy = request.Email,
            CreatedDate = DateTime.UtcNow,
            ModifiedDate = DateTime.UtcNow,
            IsDeleted = false
        };

        var user = new User
        {
            Id = Guid.NewGuid(),
            Username = request.Username,
            Email = request.Email,
            Password = request.Password,
            CreatedBy = request.Email,
            ModifiedBy = request.Email,
            CreatedDate = DateTime.UtcNow,
            ModifiedDate = DateTime.UtcNow,
            IsDeleted = false,
            Player = player
        };

        await _userRepository.CreateAsync(user, cancellationToken);

        var token = _jwtTokenGenerator.GenerateToken(user);

        return new AuthenticationResult
        {
            UserId = user.Id.ToString(),
            Token = token
        };
    }
}
