using Domain.Entities;

namespace Application.Common.Persistence
{
    public interface IUserRepository : IBaseRepository<User>
    {
        Task<User?> GetUserByEmailAsync(string email, CancellationToken cancellationToken);
    }
}
