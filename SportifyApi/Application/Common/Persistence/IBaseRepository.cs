using System.Linq.Expressions;

namespace Application.Common.Persistence
{
    public interface IBaseRepository<T> where T : class
    {
        Task CreateAsync(T entity, CancellationToken cancellationToken);

        Task<IEnumerable<T>> GetAllAsync(CancellationToken cancellationToken);

        Task<T?> GetAsync(Expression<Func<T, bool>> predicate, CancellationToken cancellationToken);
    }
}
