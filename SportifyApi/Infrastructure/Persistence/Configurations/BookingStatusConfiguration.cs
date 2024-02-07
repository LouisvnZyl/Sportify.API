using Domain.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Infrastructure.Persistence.Configurations
{
    public class BookingStatusConfiguration : IEntityTypeConfiguration<BookingStatus>
    {
        public void Configure(EntityTypeBuilder<BookingStatus> builder)
        {
            builder.ToTable("BookingStatus");

            builder.Property(e => e.BookingStatus1)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("BookingStatus");

            builder.Property(e => e.BookingStatusCreatedBy)
                .HasMaxLength(50)
                .IsUnicode(false);

            builder.Property(e => e.BookingStatusCreatedTimestamp).HasColumnType("datetime");

            builder.Property(e => e.BookingStatusModifiedBy)
                .HasMaxLength(50)
                .IsUnicode(false);

            builder.Property(e => e.BookingStatusModifiedTimestamp).HasColumnType("datetime");
        }
    }
}
