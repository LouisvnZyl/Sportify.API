using FluentValidation;
using MediatR;

namespace Application.Authentication.Common.Behavior
{
    public class ValidationBehavior<TRequest, TResponse> :
        IPipelineBehavior<TRequest, TResponse>
        where TRequest : IRequest<TResponse>
    {
        private readonly IValidator<TRequest>? _validator;

        public ValidationBehavior(IValidator<TRequest>? validator = null)
        {
            _validator = validator;
        }

        public async Task<TResponse> Handle(TRequest request, RequestHandlerDelegate<TResponse> next, CancellationToken cancellationToken)
        {
            if (_validator == null) 
            {
                return await next().ConfigureAwait(false);
            }

            var validationResult = await _validator.ValidateAsync(request, cancellationToken);

            if (validationResult.IsValid) 
            {
                return await next().ConfigureAwait(false);
            }

            var errors = validationResult.Errors.Select(e => e.ErrorMessage).ToList();

            throw new ValidationException(string.Join(", ", errors));
        }
    }
}
