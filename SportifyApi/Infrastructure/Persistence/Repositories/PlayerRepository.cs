using Application.Common.Persistence;

namespace Infrastructure.Persistence.Repositories
{
    public class PlayerRepository : IPlayerRepository
    {
        private readonly SportifyContext _dbContext;

        public PlayerRepository(SportifyContext dbContext)
        {
            _dbContext = dbContext;
        }

        public async Task AddAsync(Player player)
        {
            _dbContext.Add(player);
            await _dbContext.SaveChangesAsync();
        }
    }
}
