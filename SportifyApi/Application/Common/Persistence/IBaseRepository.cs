namespace Application.Common.Persistence
{
    public interface IBaseRepository<T> where T : class
    {
        Task CreateAsync(T entity);

        Task<IEnumerable<T>> GetAllAsync();
    }
}
