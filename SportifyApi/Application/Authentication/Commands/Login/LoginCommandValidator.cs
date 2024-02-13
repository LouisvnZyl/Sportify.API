using FluentValidation;

namespace Application.Authentication.Commands.Login
{
    public class LoginCommandValidator : AbstractValidator<ILoginCommand>
    {
        public LoginCommandValidator()
        {
            RuleFor(x => x.Email)
                .EmailAddress()
                .NotEmpty();

            RuleFor(x => x.Password)
                .NotEmpty();
        }
    }
}
