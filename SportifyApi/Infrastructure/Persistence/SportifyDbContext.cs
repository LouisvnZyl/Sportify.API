using Domain.Entities;
using Microsoft.EntityFrameworkCore;

namespace Infrastructure.Persistence
{
    public class SportifyDbContext : DbContext
    {
        public SportifyDbContext(DbContextOptions<SportifyDbContext> options) : base(options)
        {
        }

        public DbSet<User> Users { get; set; }
    }
}
