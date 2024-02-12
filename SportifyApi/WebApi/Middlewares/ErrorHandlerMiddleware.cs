using Application.Common.Exceptions;
using Application.Common.Wrappers;
using System.Net;
using System.Text;
using System.Text.Json;

namespace WebApi.Middlewares
{
    public class ErrorHandlerMiddleware
    {
        private readonly RequestDelegate _next;
        private readonly ILogger<ErrorHandlerMiddleware> _logger;

        public ErrorHandlerMiddleware(RequestDelegate next, ILogger<ErrorHandlerMiddleware> logger)
        {
            _next = next;
            _logger = logger;
        }

        public async Task InvokeAsync(HttpContext context)
        {
            try
            {
                await _next(context);

            } catch (Exception ex)
            {
                _logger.LogError(ex, "An error occurred.");

                var response = context.Response;

                response.ContentType = "application/json";
                response.StatusCode = GetStatusCodeForException(ex);

                var errorResponse = new ApiResponse<string>
                {
                    HasError = true,
                    Message = ex.Message
                };

                switch (ex)
                {
                    case ApiException:
                        response.StatusCode = (int)HttpStatusCode.BadRequest;
                        break;
                    default:
                        response.StatusCode = (int)HttpStatusCode.InternalServerError;
                        break;
                }

                var result = JsonSerializer.Serialize(errorResponse);

                await response.WriteAsync(result);
            }
        }

        private static int GetStatusCodeForException(Exception ex)
        {
            return ex switch
            {
                ApiException => (int)HttpStatusCode.BadRequest,
                _ => (int)HttpStatusCode.InternalServerError
            };
        }
    }
}
