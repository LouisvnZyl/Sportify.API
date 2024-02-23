using Application.Common.Interfaces.Authentication;
using Application.Common.Persistence;

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

    public async Task<AuthenticationResult> Handle(LoginCommand request, CancellationToken cancellationToken)
    {
        var user = await _userRepository.GetUserByEmailAsync(request.Email, cancellationToken);

        Guard.Against.NotFound(request.Email, user);

        if (user?.IsDeleted == true)
        {
            Guard.Against.NotFound(request.Email, user);
        }

        /*if (user.Password != request.Password)
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
