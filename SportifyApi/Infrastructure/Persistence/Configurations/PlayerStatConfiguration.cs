using Domain.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Infrastructure.Persistence.Configurations
{
    public class PlayerStatConfiguration : IEntityTypeConfiguration<PlayerStat>
    {
        public void Configure(EntityTypeBuilder<PlayerStat> builder)
        {
            builder.ToTable("PlayerStat");

            builder.HasKey(x => x.Id);

            builder.Property(x => x.MatchCount);

            builder.Property(x => x.WinCount);

            builder.Property(x => x.LossCount);

            builder.Property(x => x.DrawCount);

            builder.Property(x => x.PlayerRating)
                .HasColumnType("decimal(18, 2)");

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

            builder.HasOne(ps => ps.Player)
                .WithMany()
                .HasForeignKey(ps => ps.PlayerId)
                .OnDelete(DeleteBehavior.NoAction); 

            builder.HasOne(ps => ps.Sport)
                .WithMany()
                .HasForeignKey(ps => ps.SportId)
                .OnDelete(DeleteBehavior.NoAction);
        }
    }
}
