using System.Runtime.CompilerServices;
using Domain.Base;
using Domain.Repository.Interfaces;
using Infrastructure.Persistence.Interface.Base;

namespace Infrastructure.Persistence.Repositories
{
    public class GenericRepository<TEntity, Tkey> : IGenericRepository<TEntity, Tkey> where TEntity : Entity<Tkey>
    {
        private readonly IDbContext _dbContext;

        public GenericRepository(IDbContext dbContext)
        {
            _dbContext = dbContext;
        }

        public async Task AddAsync(TEntity entity) => await _dbContext.GetSet<TEntity, Tkey>().AddAsync(entity);

        public async Task Delete(Tkey id)
        {
            var entity = await GetByIdAsync(id);
            _dbContext.GetSet<TEntity, Tkey>().Remove(entity);
        }

        public IQueryable<TEntity> GetAll()
        {
            return _dbContext.GetSet<TEntity, Tkey>();
        }

        public async Task<TEntity> GetByIdAsync(Tkey id) => await _dbContext.GetSet<TEntity, Tkey>()
                .FindAsync(id);

        public async Task Update(TEntity entity)
        {
            _dbContext.GetSet<TEntity, Tkey>().Update(entity);
        }
    }
}
