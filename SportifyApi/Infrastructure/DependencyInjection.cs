﻿using Application.Common.Interfaces.Authentication;
using Application.Common.Persistence;
using Infrastructure.Authentication;
using Infrastructure.Persistence;
using Infrastructure.Persistence.Repositories;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;

namespace Infrastructure
{
    public static class DependencyInjection
    {
        public static IServiceCollection AddInfrastructure(
            this IServiceCollection services,
            ConfigurationManager configuration)
        {
            services.AddDbContext<SportifyContext>(options =>
            {
                options.UseSqlServer(configuration.GetConnectionString("SportifyConnection"));
            });

            using (var serviceScope = services.BuildServiceProvider().CreateScope())
            {
                var dbContext = serviceScope.ServiceProvider.GetRequiredService<SportifyContext>();
                dbContext.Database.Migrate();
            }

            services.Configure<JwtSettings>(configuration.GetSection(JwtSettings.SectionName));

            services.AddSingleton<IJwtTokenGenerator, JwtTokenGenerator>();

            services.AddScoped<IPlayerRepository, PlayerRepository>();
            services.AddScoped<IUserRepository, UserRepository>();
            services.AddScoped<ISportRepository, SportRepository>();
            services.AddScoped<IPlayerStatRepository, PlayerStatRepository>();

            return services;
        }
    }
}
