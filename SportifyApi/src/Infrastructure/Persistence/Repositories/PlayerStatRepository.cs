using Application.Common.Persistence;
using Domain.Entities;

namespace Infrastructure.Persistence.Repositories
{
    public class PlayerStatRepository : BaseRepository<PlayerStat>, IPlayerStatRepository
    {
        public PlayerStatRepository(SportifyContext dbContext) : base(dbContext)
        {
        }
    }
}
