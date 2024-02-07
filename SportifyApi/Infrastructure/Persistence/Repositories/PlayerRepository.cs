using Application.Common.Persistence;

namespace Infrastructure.Persistence.Repositories
{
    public class PlayerRepository : BaseRepository<Player>, IPlayerRepository
    {
        private readonly SportifyContext _dbContext;

        public PlayerRepository(SportifyContext dbContext) : base(dbContext)
        {
            _dbContext = dbContext;
        }
    }
}
