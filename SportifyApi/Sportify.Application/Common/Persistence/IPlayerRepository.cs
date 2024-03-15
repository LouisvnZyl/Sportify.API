using Domain.Entities;
using Domain.Repository.Interfaces;

namespace Application.Common.Persistence
{
    public interface IPlayerRepository : IGenericRepository<Player,Guid>
    { 
    }
}
