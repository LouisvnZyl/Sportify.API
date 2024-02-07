using Domain.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Infrastructure.Persistence.Configurations
{
    public class BookingConfigurations : IEntityTypeConfiguration<Booking>
    {
        public void Configure(EntityTypeBuilder<Booking> builder)
        {
            builder.ToTable("Booking");

            builder.Property(e => e.BookingId).ValueGeneratedNever();

            builder.Property(e => e.BookingCreatedBy)
                .HasMaxLength(50)
                .IsUnicode(false);

            builder.Property(e => e.BookingCreatedTimestamp).HasColumnType("datetime");

            builder.Property(e => e.BookingDate).HasColumnType("date");

            builder.Property(e => e.BookingModifiedBy)
                .HasMaxLength(50)
                .IsUnicode(false);

            builder.Property(e => e.BookingModifiedTimestamp).HasColumnType("datetime");

            builder.Property(e => e.BookingTeam)
                .HasMaxLength(1)
                .IsUnicode(false);

            builder.HasOne(d => d.BookingResult).WithMany(p => p.Bookings)
                .HasForeignKey(d => d.BookingResultId)
                .OnDelete(DeleteBehavior.NoAction)
                .HasConstraintName("FK_Booking_BookingResult");

            builder.HasOne(d => d.BookingStatus).WithMany(p => p.Bookings)
                .HasForeignKey(d => d.BookingStatusId)
                .OnDelete(DeleteBehavior.NoAction)
                .HasConstraintName("FK_Booking_BookingStatus");

            builder.HasOne(d => d.Player).WithMany(p => p.Bookings)
                .HasForeignKey(d => d.PlayerId)
                .OnDelete(DeleteBehavior.NoAction)
                .HasConstraintName("FK_Booking_Player");

            builder.HasOne(d => d.Venue).WithMany(p => p.Bookings)
                .HasForeignKey(d => d.VenueId)
                .OnDelete(DeleteBehavior.NoAction)
                .HasConstraintName("FK_Booking_Venue");
        }
    }
}
