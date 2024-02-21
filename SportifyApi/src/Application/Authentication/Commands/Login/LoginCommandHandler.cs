using Application.Common.Interfaces.Authentication;
using Application.Common.Persistence;
using Ardalis.GuardClauses;
using MediatR;

namespace Application.Authentication.Commands.Login;

public class LoginCommandHandler : IRequestHandler<LoginCommand, AuthenticationResult>
{
    private readonly IUserRepository _userRepository;
    private readonly IJwtTokenGenerator _jwtTokenGenerator;

    public LoginCommandHandler(IUserRepository userRepository, IJwtTokenGenerator jwtTokenGenerator)
    {
        _userRepository = userRepository;
        _jwtTokenGenerator = jwtTokenGenerator;
    }

    public async Task<AuthenticationResult> Handle(LoginCommand command, CancellationToken cancellationToken)
    {
        var user = await _userRepository.GetUserByEmailAsync(command.Email, cancellationToken);

        Guard.Against.NotFound(command.Email, user);

        if (user?.IsDeleted == true)
        {
            Guard.Against.NotFound(command.Email, user);
        }

        /*if (user.Password != command.Password)
        {
            throw new ApiException("Invalid Password");
        }*/

        var token = _jwtTokenGenerator.GenerateToken(user);


        return new AuthenticationResult
        {
            UserId = user.Id.ToString(),
            Token = token
        };
    }
}
