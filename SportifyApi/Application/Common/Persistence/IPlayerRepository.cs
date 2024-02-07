using Domain.Entities;

namespace Application.Common.Persistence
{
    public interface IPlayerRepository
    {
        Task AddAsync(Player player);
    }
}
