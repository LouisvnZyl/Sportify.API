﻿using Application.Common.Persistence;
using Domain.Entities;
using Microsoft.EntityFrameworkCore;

namespace Infrastructure.Persistance.Repositories
{
    public class UserRepository : IUserRepository
    {
        private readonly SportifyApiDbContext _dbContext;

        public UserRepository(SportifyApiDbContext dbContext)
        {
            _dbContext = dbContext;
        }

        public async Task AddAsync(User user)
        {
            _dbContext.Add(user);
            await _dbContext.SaveChangesAsync();
        }

        public async Task<User?> GetUserByEmailAsync(string email)
        {
            return await _dbContext.Users.SingleOrDefaultAsync(user => user.Email == email);
        }
    }
}
