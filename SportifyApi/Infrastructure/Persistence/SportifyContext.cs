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

        new BookingConfiguration().Configure(modelBuilder.Entity<Booking>());
        new BookingResultConfiguration().Configure(modelBuilder.Entity<BookingResult>());
        new BookingStatusConfiguration().Configure(modelBuilder.Entity<BookingStatus>());
        new NotificationConfiguration().Configure(modelBuilder.Entity<Notification>());
        new NotificationTypeConfiguration().Configure(modelBuilder.Entity<NotificationType>());
        new PaymentConfiguration().Configure(modelBuilder.Entity<Payment>());
        new PaymentStatusConfiguration().Configure(modelBuilder.Entity<PaymentStatus>());
        new PlayerConfiguration().Configure(modelBuilder.Entity<Player>());
        new PlayerStatConfiguration().Configure(modelBuilder.Entity<PlayerStat>());
        new PreferenceConfiguration().Configure(modelBuilder.Entity<Preference>());
        new ReviewConfiguration().Configure(modelBuilder.Entity<Review>());
        new SportConfiguration().Configure(modelBuilder.Entity<Sport>());
        new UserConfiguration().Configure(modelBuilder.Entity<User>());
        new VenueConfiguration().Configure(modelBuilder.Entity<Venue>());
        new VenueImageConfiguration().Configure(modelBuilder.Entity<VenueImage>());
    }
}
