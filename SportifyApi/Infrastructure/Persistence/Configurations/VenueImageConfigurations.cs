using Domain.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Infrastructure.Persistence.Configurations
{
    public class VenueImageConfigurations : IEntityTypeConfiguration<VenueImage>
    {
        public void Configure(EntityTypeBuilder<VenueImage> builder)
        {
            builder.ToTable("VenueImage");

            builder.Property(e => e.VenueImageCreatedBy)
                .HasMaxLength(50)
                .IsUnicode(false);

            builder.Property(e => e.VenueImageCreatedTimestamp).HasColumnType("datetime");

            builder.Property(e => e.VenueImageModifiedBy)
                .HasMaxLength(50)
                .IsUnicode(false);

            builder.Property(e => e.VenueImageModifiedTimestamp).HasColumnType("datetime");

            builder.Property(e => e.VenueImageUrl)
                .HasMaxLength(50)
                .IsUnicode(false);
        }
    }
}
