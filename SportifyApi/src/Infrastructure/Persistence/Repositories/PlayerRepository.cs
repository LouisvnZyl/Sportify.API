using Application.Common.Persistence;

namespace Infrastructure.Persistence.Repositories
{
    public class PlayerRepository : BaseRepository<Player>, IPlayerRepository
    {
        public PlayerRepository(SportifyContext dbContext) : base(dbContext)
        {
        }
    }
}
