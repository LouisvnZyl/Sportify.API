using Application.Common.Persistence;
using Domain.Entities;
using Microsoft.EntityFrameworkCore;
using System.Linq.Expressions;

namespace Infrastructure.Persistence.Repositories
{
    public abstract class BaseRepository<T> : IBaseRepository<T> where T : class, IEntity
    {
        private readonly SportifyContext _dbContext;
        protected readonly DbSet<T> _dbSet;

        public BaseRepository(SportifyContext dbContext)
        {
            _dbContext = dbContext;
            _dbSet = dbContext.Set<T>();
        }

        public async Task CreateAsync(T entity)
        {
            _dbContext.Add(entity);
            await _dbContext.SaveChangesAsync();
        }

        public async Task<IEnumerable<T>> GetAllAsync()
        {
            return await _dbSet.ToListAsync();
        }

        public async Task<T?> GetAsync(Expression<Func<T, bool>> predicate)
        { 
            return await _dbSet
                .Where(predicate)
                .FirstOrDefaultAsync();
        }

        public async Task RemoveById(Guid id)
        {
            var obj = await _dbSet.FirstOrDefaultAsync(x => x.Id == id);
            if(obj != null)
            {
                obj.IsDeleted = true;
                _dbSet.Update(obj);
                await _dbContext.SaveChangesAsync();
            }
        }
    }
}
