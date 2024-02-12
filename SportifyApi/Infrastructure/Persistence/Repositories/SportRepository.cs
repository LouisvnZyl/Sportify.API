using Application.Common.Persistence;
using Domain.Entities;

namespace Infrastructure.Persistence.Repositories
{
    public class SportRepository : BaseRepository<Sport>, ISportRepository
    {

        public SportRepository(SportifyContext dbContext) : base(dbContext)
        {
        }
    }
}
