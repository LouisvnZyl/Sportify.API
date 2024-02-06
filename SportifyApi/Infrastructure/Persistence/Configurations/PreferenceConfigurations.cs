using Domain.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Infrastructure.Persistence.Configurations
{
    public class PreferenceConfigurations : IEntityTypeConfiguration<Preference>
    {
        public void Configure(EntityTypeBuilder<Preference> builder)
        {
            builder.ToTable("Preference");

            builder.Property(e => e.PreferenceCreatedBy)
                .HasMaxLength(50)
                .IsUnicode(false);

            builder.Property(e => e.PreferenceCreatedTimestamp).HasColumnType("datetime");

            builder.Property(e => e.PreferenceModifiedBy)
                .HasMaxLength(50)
                .IsUnicode(false);

            builder.Property(e => e.PreferenceModifiedTimestamp).HasColumnType("datetime");

            builder.HasOne(d => d.Sport).WithMany(p => p.Preferences)
                .HasForeignKey(d => d.SportId)
                .HasConstraintName("FK_Preference_Sport");

            builder.HasOne(d => d.Venue).WithMany(p => p.Preferences)
                .HasForeignKey(d => d.VenueId)
                .HasConstraintName("FK_Preference_Venue");
        }
    }
}
