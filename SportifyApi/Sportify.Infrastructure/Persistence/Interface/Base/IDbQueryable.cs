using Domain.Base;
using Microsoft.EntityFrameworkCore;

namespace Infrastructure.Persistence.Interface.Base
{
    public interface IDbQueryable
    {
        DbSet<TEntity> GetSet<TEntity, Tkey>() where TEntity : Entity<Tkey>;
    }
}