using Application.Common.Persistence;
using Domain.Entities;
using Infrastructure.Persistence.Interface.Base;

namespace Infrastructure.Persistence.Repositories
{
    public class PlayerRepository : GenericRepository<Player,Guid>, IPlayerRepository
    {
        public PlayerRepository(IDbContext dbContext) : base(dbContext)
        {
        }
    }
}
