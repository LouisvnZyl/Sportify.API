using Infrastructure.Persistence.Interface.Base;
using Microsoft.EntityFrameworkCore.Storage;

namespace Infrastructure.Persistence.Interface.UnitOfWork
{
    public interface IUnitOfWork<T> : IDisposable where T : IDbContext
    {
        int Complete();
        Task<int> CompleteAsync();

        IDbContextTransaction BeginTransaction();
    }
}
