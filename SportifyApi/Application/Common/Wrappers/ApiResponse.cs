namespace Application.Common.Wrappers
{
    public class ApiResponse<T>
    {
        public ApiResponse() 
        { 
        }

        public ApiResponse(T data, string message = null)
        {
            HasError = false;
            Message = message;
            Data = data;
        }

        public ApiResponse(string message) 
        {
            HasError = true;
            Message = message;
        }

        public bool HasError { get; set; }
        public string Message { get; set; }
        public T Data { get; set; }
    }
}
