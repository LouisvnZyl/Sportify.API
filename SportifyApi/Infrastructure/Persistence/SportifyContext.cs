using Domain.Entities;
using Infrastructure.Persistence.Configurations;
using Microsoft.EntityFrameworkCore;

namespace Infrastructure.Persistence;

public class SportifyContext : DbContext
{
    public SportifyContext(DbContextOptions<SportifyContext> options)
        : base(options)
    {
    }

    public virtual DbSet<User> Users { get; set; }

    public virtual DbSet<Player> Players { get; set; }

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
