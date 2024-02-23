using Application.Common.Persistence;
using Domain.Entities;
using Microsoft.EntityFrameworkCore;
using System.Linq.Expressions;

namespace Infrastructure.Persistence.Repositories
{
    public abstract class BaseRepository<T> : IBaseRepository<T> where T : class
    {
        private readonly SportifyContext _dbContext;
        protected readonly DbSet<T> _dbSet;

        public BaseRepository(SportifyContext dbContext)
        {
            _dbContext = dbContext;
            _dbSet = dbContext.Set<T>();
        }

        public void Dispose()
        {
            _dbContext.Dispose();
        }

        public async Task CreateAsync(T entity, CancellationToken cancellationToken)
        {
            _dbContext.Add(entity);
            await _dbContext.SaveChangesAsync(cancellationToken);
        }

        public async Task<IEnumerable<T>> GetAllAsync(CancellationToken cancellationToken)
        {
            return await _dbSet.ToListAsync(cancellationToken);
        }

        public async Task<T?> GetAsync(Expression<Func<T, bool>> predicate, CancellationToken cancellationToken)
        { 
            return await _dbSet
                .Where(predicate)
                .FirstOrDefaultAsync(cancellationToken);
        }
    }
}
