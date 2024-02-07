using Domain.Entities;
using Infrastructure.Persistence.Configurations;
using Microsoft.EntityFrameworkCore;

namespace Infrastructure.Persistence;

public class SportifyContext : DbContext
{
    public SportifyContext(DbContextOptions<SportifyContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Booking> Bookings { get; set; }

    public virtual DbSet<BookingResult> BookingResults { get; set; }

    public virtual DbSet<BookingStatus> BookingStatuses { get; set; }

    public virtual DbSet<Notification> Notifications { get; set; }

    public virtual DbSet<NotificationType> NotificationTypes { get; set; }

    public virtual DbSet<Payment> Payments { get; set; }

    public virtual DbSet<PaymentStatus> PaymentStatuses { get; set; }

    public virtual DbSet<Player> Players { get; set; }

    public virtual DbSet<PlayerStat> PlayerStats { get; set; }

    public virtual DbSet<Preference> Preferences { get; set; }

    public virtual DbSet<Review> Reviews { get; set; }

    public virtual DbSet<Sport> Sports { get; set; }

    public virtual DbSet<User> Users { get; set; }

    public virtual DbSet<Venue> Venues { get; set; }

    public virtual DbSet<VenueImage> VenueImages { get; set; }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        base.OnModelCreating(modelBuilder);

        new BookingConfigurations().Configure(modelBuilder.Entity<Booking>());
        new BookingResultConfiguration().Configure(modelBuilder.Entity<BookingResult>());
        new BookingStatusConfigurations().Configure(modelBuilder.Entity<BookingStatus>());
        new NotificationConfigurations().Configure(modelBuilder.Entity<Notification>());
        new NotificationTypeConfigurations().Configure(modelBuilder.Entity<NotificationType>());
        new PaymentConfigurations().Configure(modelBuilder.Entity<Payment>());
        new PaymentStatusConfigurations().Configure(modelBuilder.Entity<PaymentStatus>());
        new PlayerConfigurations().Configure(modelBuilder.Entity<Player>());
        new PlayerStatConfigurations().Configure(modelBuilder.Entity<PlayerStat>());
        new PreferenceConfigurations().Configure(modelBuilder.Entity<Preference>());
        new ReviewConfigurations().Configure(modelBuilder.Entity<Review>());
        new SportConfigurations().Configure(modelBuilder.Entity<Sport>());
        new UserConfigurations().Configure(modelBuilder.Entity<User>());
        new VenueConfigurations().Configure(modelBuilder.Entity<Venue>());
        new VenueImageConfigurations().Configure(modelBuilder.Entity<VenueImage>());
    }
}
