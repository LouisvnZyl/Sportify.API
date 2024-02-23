using System.Text.RegularExpressions;

namespace Application.Authentication.Commands.Register;

public class RegisterCommandValidator : AbstractValidator<RegisterCommand>
{
    public RegisterCommandValidator()
    {
        RuleFor(x => x.Email)
            .NotEmpty()
            .EmailAddress();

        RuleFor(x => x.Username)
            .NotEmpty();

        RuleFor(x => x.Password)
            .NotEmpty()
            .MinimumLength(8)
            .Matches(@"[A-Z]+").WithMessage("Your password must contain at least one uppercase letter.")
                .Matches(@"[a-z]+").WithMessage("Your password must contain at least one lowercase letter.")
                .Matches(@"[0-9]+").WithMessage("Your password must contain at least one number.");

        RuleFor(x => x.FirstName)
            .NotEmpty()
            .MinimumLength(2);

        RuleFor(x => x.LastName)
            .NotEmpty()
            .MinimumLength(2);

        RuleFor(x => x.PhoneNumber)
            .NotEmpty()
            .Must(BeAValidSouthAfricanPhoneNumber).WithMessage("Invalid South African phone number.");

        RuleFor(x => x.DateOfBirth)
            .NotEmpty().WithMessage("Date of birth is required.")
            .Must(BeAValidDate).WithMessage("Invalid date of birth. Must be a valid date.")
            .Must(BeInPast).WithMessage("Date of birth must be in the past.")
            .Must(NotTooFarInPast).WithMessage("Date of birth is too far in the past.");

    }

    private bool BeAValidSouthAfricanPhoneNumber(string phoneNumber)
    {
        return Regex.IsMatch(phoneNumber, @"^\+27\d{9}$");
    }

    private bool BeAValidDate(DateTime dateOfBirth)
    {
        return dateOfBirth != default(DateTime);
    }

    private bool BeInPast(DateTime dateOfBirth)
    {
        return dateOfBirth <= DateTime.Today;
    }

    private bool NotTooFarInPast(DateTime dateOfBirth)
    {
        var maxAge = TimeSpan.FromDays(365 * 120);
        return DateTime.Today - dateOfBirth <= maxAge;
    }
}
