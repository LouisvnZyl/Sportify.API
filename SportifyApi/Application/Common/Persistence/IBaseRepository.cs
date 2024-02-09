using System.Linq.Expressions;

namespace Application.Common.Persistence
{
    public interface IBaseRepository<T> where T : class
    {
        Task CreateAsync(T entity);

        Task<IEnumerable<T>> GetAllAsync();

        Task<T?> GetAsync(Expression<Func<T, bool>> predicate);

        Task RemoveById(Guid id);
    }
}
