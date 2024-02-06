using Domain.Entities;

namespace Application.Common.Persistence
{
    public interface IUserRepository
    {
        Task<User?> GetUserByEmailAsync(string email);
        Task AddAsync(User user);
    }
}
