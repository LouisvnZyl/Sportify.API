using Microsoft.EntityFrameworkCore;

namespace Infrastructure.Model;

public partial class SportifyContext : DbContext
{
    public SportifyContext()
    {
    }

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

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Server=.;Database=Sportify;Integrated Security=True; TrustServerCertificate=True;");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Booking>(entity =>
        {
            entity.Property(e => e.BookingId).ValueGeneratedNever();
            entity.Property(e => e.BookingCreatedBy)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.BookingCreatedTimestamp).HasColumnType("datetime");
            entity.Property(e => e.BookingDate).HasColumnType("date");
            entity.Property(e => e.BookingModifiedBy)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.BookingModifiedTimestamp).HasColumnType("datetime");
            entity.Property(e => e.BookingTeam)
                .HasMaxLength(1)
                .IsUnicode(false);

            entity.HasOne(d => d.BookingResult).WithMany(p => p.Bookings)
                .HasForeignKey(d => d.BookingResultId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Bookings_BookingResults");

            entity.HasOne(d => d.BookingStatus).WithMany(p => p.Bookings)
                .HasForeignKey(d => d.BookingStatusId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Bookings_BookingStatus");

            entity.HasOne(d => d.Player).WithMany(p => p.Bookings)
                .HasForeignKey(d => d.PlayerId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Bookings_Players");

            entity.HasOne(d => d.Venue).WithMany(p => p.Bookings)
                .HasForeignKey(d => d.VenueId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Bookings_Venues");
        });

        modelBuilder.Entity<BookingResult>(entity =>
        {
            entity.HasKey(e => e.BookingResultId).HasName("PK_BookingResult");

            entity.Property(e => e.BookingResult1)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("BookingResult");
            entity.Property(e => e.BookingResultCreatedBy)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.BookingResultCreatedTimestamp).HasColumnType("datetime");
            entity.Property(e => e.BookingResultModifiedBy)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.BookingResultModifiedTimestamp).HasColumnType("datetime");
        });

        modelBuilder.Entity<BookingStatus>(entity =>
        {
            entity.ToTable("BookingStatus");

            entity.Property(e => e.BookingStatus1)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("BookingStatus");
            entity.Property(e => e.BookingStatusCreatedBy)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.BookingStatusCreatedTimestamp).HasColumnType("datetime");
            entity.Property(e => e.BookingStatusModifiedBy)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.BookingStatusModifiedTimestamp).HasColumnType("datetime");
        });

        modelBuilder.Entity<Notification>(entity =>
        {
            entity.Property(e => e.NotificationCreatedBy)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.NotificationCreatedTimestamp).HasColumnType("datetime");
            entity.Property(e => e.NotificationMessage)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.NotificationModifiedBy)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.NotificationModifiedTimestamp).HasColumnType("datetime");
            entity.Property(e => e.NotificationTimestamp).HasColumnType("datetime");

            entity.HasOne(d => d.NotificationType).WithMany(p => p.Notifications)
                .HasForeignKey(d => d.NotificationTypeId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Notifications_NotificationTypes");

            entity.HasOne(d => d.Player).WithMany(p => p.Notifications)
                .HasForeignKey(d => d.PlayerId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Notifications_Players");
        });

        modelBuilder.Entity<NotificationType>(entity =>
        {
            entity.Property(e => e.NotificationType1)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("NotificationType");
            entity.Property(e => e.NotificationTypeCreatedBy)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.NotificationTypeCreatedTimestamp).HasColumnType("datetime");
            entity.Property(e => e.NotificationTypeModifiedBy)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.NotificationTypeModifiedTimestamp).HasColumnType("datetime");
        });

        modelBuilder.Entity<Payment>(entity =>
        {
            entity.Property(e => e.PaymentAmount).HasColumnType("money");
            entity.Property(e => e.PaymentCreatedBy)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.PaymentCreatedTimestamp).HasColumnType("datetime");
            entity.Property(e => e.PaymentModifiedBy)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.PaymentModifiedTimestamp).HasColumnType("datetime");
            entity.Property(e => e.PaymentTimestamp).HasColumnType("datetime");

            entity.HasOne(d => d.Booking).WithMany(p => p.Payments)
                .HasForeignKey(d => d.BookingId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Payments_Bookings");

            entity.HasOne(d => d.PaymentStatus).WithMany(p => p.Payments)
                .HasForeignKey(d => d.PaymentStatusId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Payments_PaymentStatus");

            entity.HasOne(d => d.Player).WithMany(p => p.Payments)
                .HasForeignKey(d => d.PlayerId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Payments_Players");
        });

        modelBuilder.Entity<PaymentStatus>(entity =>
        {
            entity.ToTable("PaymentStatus");

            entity.Property(e => e.PaymentStatus1)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("PaymentStatus");
            entity.Property(e => e.PaymentStatusCreatedBy)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.PaymentStatusCreatedTimestamp).HasColumnType("datetime");
            entity.Property(e => e.PaymentStatusModifiedBy)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.PaymentStatusModifiedTimestamp).HasColumnType("datetime");
        });

        modelBuilder.Entity<Player>(entity =>
        {
            entity.Property(e => e.PlayerCreatedBy)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.PlayerCreatedTimestamp).HasColumnType("datetime");
            entity.Property(e => e.PlayerCreationTimestamp).HasColumnType("datetime");
            entity.Property(e => e.PlayerDateOfBirth)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.PlayerEmailAddress)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.PlayerFirstName)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.PlayerLastName)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.PlayerModifiedBy)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.PlayerModifiedTimestamp).HasColumnType("datetime");
            entity.Property(e => e.PlayerPhoneNumber)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.PlayerProfilePictureUrl)
                .HasMaxLength(50)
                .IsUnicode(false);

            entity.HasOne(d => d.Preference).WithMany(p => p.Players)
                .HasForeignKey(d => d.PreferenceId)
                .HasConstraintName("FK_Players_Preferences");
        });

        modelBuilder.Entity<PlayerStat>(entity =>
        {
            entity.HasKey(e => e.PlayerId);

            entity.Property(e => e.PlayerId).ValueGeneratedNever();
            entity.Property(e => e.PlayerStatCreatedBy)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.PlayerStatCreatedTimestamp).HasColumnType("datetime");
            entity.Property(e => e.PlayerStatId).ValueGeneratedOnAdd();
            entity.Property(e => e.PlayerStatModifiedBy)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.PlayerStatModifiedTimestamp).HasColumnType("datetime");
            entity.Property(e => e.PlayerStatRating).HasColumnType("numeric(6, 5)");

            entity.HasOne(d => d.Player).WithOne(p => p.PlayerStat)
                .HasForeignKey<PlayerStat>(d => d.PlayerId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_PlayerStats_Players");

            entity.HasOne(d => d.Sport).WithMany(p => p.PlayerStats)
                .HasForeignKey(d => d.SportId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_PlayerStats_Sports");
        });

        modelBuilder.Entity<Preference>(entity =>
        {
            entity.Property(e => e.PreferenceCreatedBy)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.PreferenceCreatedTimestamp).HasColumnType("datetime");
            entity.Property(e => e.PreferenceModifiedBy)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.PreferenceModifiedTimestamp).HasColumnType("datetime");

            entity.HasOne(d => d.Sport).WithMany(p => p.Preferences)
                .HasForeignKey(d => d.SportId)
                .HasConstraintName("FK_Preferences_Sports");

            entity.HasOne(d => d.Venue).WithMany(p => p.Preferences)
                .HasForeignKey(d => d.VenueId)
                .HasConstraintName("FK_Preferences_Venues");
        });

        modelBuilder.Entity<Review>(entity =>
        {
            entity.Property(e => e.ReviewComment)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.ReviewCreatedBy)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.ReviewCreatedTimestamp).HasColumnType("datetime");
            entity.Property(e => e.ReviewModifiedBy)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.ReviewModifiedTimestamp).HasColumnType("datetime");
            entity.Property(e => e.ReviewRating)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.ReviewTimestamp).HasColumnType("datetime");

            entity.HasOne(d => d.Player).WithMany(p => p.Reviews)
                .HasForeignKey(d => d.PlayerId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Reviews_Players");
        });

        modelBuilder.Entity<Sport>(entity =>
        {
            entity.Property(e => e.SportCreatedBy)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.SportCreatedTimestamp).HasColumnType("datetime");
            entity.Property(e => e.SportModifiedBy)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.SportModifiedTimestamp).HasColumnType("datetime");
            entity.Property(e => e.SportName)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.SportType)
                .HasMaxLength(50)
                .IsUnicode(false);
        });

        modelBuilder.Entity<User>(entity =>
        {
            entity.Property(e => e.Id).ValueGeneratedNever();
        });

        modelBuilder.Entity<Venue>(entity =>
        {
            entity.Property(e => e.VenueCreatedBy)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.VenueCreatedTimestamp).HasColumnType("datetime");
            entity.Property(e => e.VenueLocation)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.VenueModifiedBy)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.VenueModifiedTimestamp).HasColumnType("datetime");
            entity.Property(e => e.VenueName)
                .HasMaxLength(50)
                .IsUnicode(false);

            entity.HasOne(d => d.Review).WithMany(p => p.Venues)
                .HasForeignKey(d => d.ReviewId)
                .HasConstraintName("FK_Venues_Reviews");

            entity.HasOne(d => d.Sport).WithMany(p => p.Venues)
                .HasForeignKey(d => d.SportId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Venues_Sports");

            entity.HasOne(d => d.VenueImage).WithMany(p => p.Venues)
                .HasForeignKey(d => d.VenueImageId)
                .HasConstraintName("FK_Venues_VenueImages");
        });

        modelBuilder.Entity<VenueImage>(entity =>
        {
            entity.Property(e => e.VenueImageCreatedBy)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.VenueImageCreatedTimestamp).HasColumnType("datetime");
            entity.Property(e => e.VenueImageModifiedBy)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.VenueImageModifiedTimestamp).HasColumnType("datetime");
            entity.Property(e => e.VenueImageUrl)
                .HasMaxLength(50)
                .IsUnicode(false);
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
