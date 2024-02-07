using Domain.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Infrastructure.Persistence.Configurations
{
    public class PlayerStatConfigurations : IEntityTypeConfiguration<PlayerStat>
    {
        public void Configure(EntityTypeBuilder<PlayerStat> builder)
        {
            builder.HasKey(e => e.PlayerId);

            builder.ToTable("PlayerStat");

            builder.Property(e => e.PlayerId)
                .ValueGeneratedNever();

            builder.Property(e => e.PlayerStatCreatedBy)
                .HasMaxLength(50)
                .IsUnicode(false);

            builder.Property(e => e.PlayerStatCreatedTimestamp)
                .HasColumnType("datetime");

            builder.Property(e => e.PlayerStatId)
                .ValueGeneratedOnAdd();

            builder.Property(e => e.PlayerStatModifiedBy)
                .HasMaxLength(50)
                .IsUnicode(false);

            builder.Property(e => e.PlayerStatModifiedTimestamp)
                .HasColumnType("datetime");

            builder.Property(e => e.PlayerStatRating)
                .HasColumnType("decimal")
                .HasPrecision(18, 2);

            builder.HasOne(d => d.Player).WithOne(p => p.PlayerStat)
                .HasForeignKey<PlayerStat>(d => d.PlayerId)
                .OnDelete(DeleteBehavior.NoAction)
                .HasConstraintName("FK_PlayerStat_Player");

            builder.HasOne(d => d.Sport).WithMany(p => p.PlayerStats)
                .HasForeignKey(d => d.SportId)
                .OnDelete(DeleteBehavior.NoAction)
                .HasConstraintName("FK_PlayerStat_Sport");
        }
    }
}
