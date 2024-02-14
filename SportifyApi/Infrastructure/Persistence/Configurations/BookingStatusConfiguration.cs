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

            builder.HasKey(u => u.Id);

            builder.Property(u => u.Name)
                .IsRequired()
                .HasMaxLength(50);

            builder.Property(p => p.CreatedDate)
               .IsRequired();

            builder.Property(p => p.CreatedBy)
                .IsRequired()
                .HasMaxLength(50);

            builder.Property(p => p.ModifiedDate)
                .IsRequired();

            builder.Property(p => p.ModifiedBy)
                .IsRequired()
                .HasMaxLength(50);

            builder.Property(p => p.IsDeleted)
                .IsRequired();
        }
    }
}
