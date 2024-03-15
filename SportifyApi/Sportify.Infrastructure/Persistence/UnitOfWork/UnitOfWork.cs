using Infrastructure.Persistence.Interface.Base;
using Infrastructure.Persistence.Interface.UnitOfWork;
using Microsoft.EntityFrameworkCore.Storage;

namespace Infrastructure.Persistence.UnitOfWork
{
    public abstract class UnitOfWork<T> : IUnitOfWork<T> where T : IDbContext
    {
        private readonly T _dbContext;

        public UnitOfWork(T dbContext)
        {
            _dbContext = dbContext;
            Initialize(dbContext);
        }

        public IDbContextTransaction BeginTransaction() => _dbContext.BeginTransaction();

        public int Complete() => _dbContext.SaveSync();

        public Task<int> CompleteAsync() => _dbContext.SaveAsync();

        public void Dispose()
        => _dbContext.Dispose();

        protected abstract void Initialize(T dbContext);
    }
}
