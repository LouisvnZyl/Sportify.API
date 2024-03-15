using Domain.Base;
using Domain.Entities;
using Infrastructure.Persistence.Configurations;
using Infrastructure.Persistence.Interface.Base;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Storage;

namespace Infrastructure.Persistence.DatabaseContext;

public class SportifyContext : DbContext,IDbContext
{
    public SportifyContext(DbContextOptions<SportifyContext> options)
        : base(options)
    {
    }
    
    public IDbContextTransaction BeginTransaction() =>
        Database.BeginTransaction();
   public DbSet<TEntity> GetSet<TEntity, Tkey>() where TEntity : Entity<Tkey> => Set<TEntity>();

    public Task<int> SaveAsync() =>
        SaveChangesAsync();

    public int SaveSync() =>
        SaveChanges();

    public void Migrate() =>
        Database.Migrate();
    
    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        base.OnModelCreating(modelBuilder);

        new BookingStatusConfiguration().Configure(modelBuilder.Entity<BookingStatus>());
        new PlayerConfiguration().Configure(modelBuilder.Entity<Player>());
        new PlayerStatConfiguration().Configure(modelBuilder.Entity<PlayerStat>());
        new SportConfiguration().Configure(modelBuilder.Entity<Sport>());
        new UserConfiguration().Configure(modelBuilder.Entity<User>());
    }
}
