namespace Application.Common.Wrappers
{
    public record ApiResponse<T>(bool HasError, string Message, T Data)
    {
        // Default constructor
        public ApiResponse() : this(false, string.Empty, default!) { }

        // Constructor with data
        public ApiResponse(T data, string message = "") : this(false, message, data) { }

        // Constructor with error message
        public ApiResponse(string message = "") : this(true, message, default!) { }
    }
}