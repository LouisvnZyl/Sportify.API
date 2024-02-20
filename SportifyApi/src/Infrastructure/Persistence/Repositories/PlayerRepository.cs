using Application.Common.Persistence;
using Domain.Entities;

namespace Infrastructure.Persistence.Repositories
{
    public class PlayerRepository : BaseRepository<Player>, IPlayerRepository
    {
        public PlayerRepository(SportifyContext dbContext) : base(dbContext)
        {
        }
    }
}
