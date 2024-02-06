using Domain.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Infrastructure.Persistence.Configurations
{
    public class BookingResultConfiguration : IEntityTypeConfiguration<BookingResult>
    {
        public void Configure(EntityTypeBuilder<BookingResult> builder)
        {
            builder.ToTable("BookingResult");

            builder.Property(e => e.BookingResult1)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("BookingResult");

            builder.Property(e => e.BookingResultCreatedBy)
                .HasMaxLength(50)
                .IsUnicode(false);

            builder.Property(e => e.BookingResultCreatedTimestamp).HasColumnType("datetime");

            builder.Property(e => e.BookingResultModifiedBy)
                .HasMaxLength(50)
                .IsUnicode(false);

            builder.Property(e => e.BookingResultModifiedTimestamp).HasColumnType("datetime");
        }
    }
}
