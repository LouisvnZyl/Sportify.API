using Application.Common.Persistence;
using Domain.Entities;
using Microsoft.EntityFrameworkCore;

namespace Infrastructure.Persistence.Repositories
{
    public class UserRepository : BaseRepository<User>, IUserRepository
    {
        public UserRepository(SportifyContext dbContext) : base(dbContext)
        {
        }

        public async Task<User?> GetUserByEmailAsync(string email, CancellationToken cancellationToken)
        {
            return await _dbSet.SingleOrDefaultAsync(user => user.Email == email, cancellationToken);
        }
    }
}
