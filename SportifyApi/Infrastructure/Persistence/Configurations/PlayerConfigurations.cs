using Domain.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Infrastructure.Persistence.Configurations
{
    public class PlayerConfigurations : IEntityTypeConfiguration<Player>
    {
        public void Configure(EntityTypeBuilder<Player> builder)
        {
            builder.ToTable("Player");

            builder.Property(e => e.PlayerCreatedBy)
                .HasMaxLength(50)
                .IsUnicode(false);

            builder.Property(e => e.PlayerCreatedTimestamp).HasColumnType("datetime");

            builder.Property(e => e.PlayerCreationTimestamp).HasColumnType("datetime");

            builder.Property(e => e.PlayerDateOfBirth)
                .HasMaxLength(50)
                .IsUnicode(false);

            builder.Property(e => e.PlayerEmailAddress)
                .HasMaxLength(50)
                .IsUnicode(false);

            builder.Property(e => e.PlayerFirstName)
                .HasMaxLength(50)
                .IsUnicode(false);

            builder.Property(e => e.PlayerLastName)
                .HasMaxLength(50)
                .IsUnicode(false);

            builder.Property(e => e.PlayerModifiedBy)
                .HasMaxLength(50)
                .IsUnicode(false);

            builder.Property(e => e.PlayerModifiedTimestamp).HasColumnType("datetime");

            builder.Property(e => e.PlayerPhoneNumber)
                .HasMaxLength(50)
                .IsUnicode(false);

            builder.Property(e => e.PlayerProfilePictureUrl)
                .HasMaxLength(50)
                .IsUnicode(false);

            builder.HasOne(d => d.Preference).WithMany(p => p.Players)
                .HasForeignKey(d => d.PreferenceId)
                .HasConstraintName("FK_Player_Preference");
        }
    }
}
