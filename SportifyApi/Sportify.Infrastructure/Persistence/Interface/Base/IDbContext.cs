using Microsoft.EntityFrameworkCore.Storage;

namespace Infrastructure.Persistence.Interface.Base
{
    public interface IDbContext : IDbQueryable, IDisposable
    {
        Task<int> SaveAsync();

        int SaveSync();

        IDbContextTransaction BeginTransaction();

        void Migrate();
    }
}
