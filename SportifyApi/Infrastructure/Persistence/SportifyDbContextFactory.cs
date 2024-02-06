using Infrastructure.Persistence;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Design;
using Microsoft.Extensions.Configuration;

public class SportifyDbContextFactory : IDesignTimeDbContextFactory<SportifyDbContext>
{
    public SportifyDbContext CreateDbContext(string[] args)
    {
        // Build configuration
        IConfigurationRoot configuration = new ConfigurationBuilder()
            .SetBasePath(Directory.GetCurrentDirectory())
            .AddJsonFile("appsettings.json")
            .Build();

        // Get connection string from appsettings.json
        var connectionString = "Server=BHAVYAPAT-PC\\SQLEXPRESS;Database=Sportify;Integrated Security=True; TrustServerCertificate=True;";

        // Create DbContext options
        var optionsBuilder = new DbContextOptionsBuilder<SportifyDbContext>();
        optionsBuilder.UseSqlServer(connectionString);

        return new SportifyDbContext(optionsBuilder.Options);
    }
}
