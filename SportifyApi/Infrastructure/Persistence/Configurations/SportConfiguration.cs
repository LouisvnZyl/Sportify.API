using Domain.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Infrastructure.Persistence.Configurations
{
    public class SportConfiguration : IEntityTypeConfiguration<Sport>
    {
        public void Configure(EntityTypeBuilder<Sport> builder)
        {
            builder.ToTable("Sport");

            builder.Property(e => e.SportCreatedBy)
                .HasMaxLength(50)
                .IsUnicode(false);

            builder.Property(e => e.SportCreatedTimestamp).HasColumnType("datetime");

            builder.Property(e => e.SportModifiedBy)
                .HasMaxLength(50)
                .IsUnicode(false);

            builder.Property(e => e.SportModifiedTimestamp).HasColumnType("datetime");

            builder.Property(e => e.SportName)
                .HasMaxLength(50)
                .IsUnicode(false);

            builder.Property(e => e.SportType)
                .HasMaxLength(50)
                .IsUnicode(false);
        }
    }
}
