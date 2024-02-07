using Domain.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Infrastructure.Persistence.Configurations
{
    public class VenueConfigurations : IEntityTypeConfiguration<Venue>
    {
        public void Configure(EntityTypeBuilder<Venue> builder)
        {
            builder.ToTable("Venue");

            builder.Property(e => e.VenueCreatedBy)
                .HasMaxLength(50)
                .IsUnicode(false);

            builder.Property(e => e.VenueCreatedTimestamp).HasColumnType("datetime");

            builder.Property(e => e.VenueLocation)
                .HasMaxLength(50)
                .IsUnicode(false);

            builder.Property(e => e.VenueModifiedBy)
                .HasMaxLength(50)
                .IsUnicode(false);

            builder.Property(e => e.VenueModifiedTimestamp).HasColumnType("datetime");

            builder.Property(e => e.VenueName)
                .HasMaxLength(50)
                .IsUnicode(false);

            builder.HasOne(d => d.Review).WithMany(p => p.Venues)
                .HasForeignKey(d => d.ReviewId)
                .HasConstraintName("FK_Venue_Review");

            builder.HasOne(d => d.Sport).WithMany(p => p.Venues)
                .HasForeignKey(d => d.SportId)
                .OnDelete(DeleteBehavior.NoAction)
                .HasConstraintName("FK_Venue_Sport");

            builder.HasOne(d => d.VenueImage).WithMany(p => p.Venues)
                .HasForeignKey(d => d.VenueImageId)
                .HasConstraintName("FK_Venue_VenueImage");
        }
    }
}
