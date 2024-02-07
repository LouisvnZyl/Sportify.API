using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;

namespace Infrastructure.Persistence.Configurations
{
    public class PlayerConfiguration : IEntityTypeConfiguration<Player>
    {
        public void Configure(EntityTypeBuilder<Player> builder)
        {
            builder.ToTable("Players");

            builder.HasKey(p => p.Id);

            builder.Property(p => p.FirstName)
                .IsRequired()
                .HasMaxLength(50);

            builder.Property(p => p.LastName)
                .IsRequired()
                .HasMaxLength(50);

            builder.Property(p => p.Nickname)
                .HasMaxLength(50);

            builder.Property(p => p.PhoneNumber)
                .HasMaxLength(20);

            builder.Property(p => p.DateOfBirth)
                .HasMaxLength(50);

            builder.Property(p => p.ProfilePictureUrl)
                .HasMaxLength(255);

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

            builder.HasOne(p => p.User)
                .WithOne(u => u.Player)
                .HasForeignKey<Player>(p => p.UserId)
                .OnDelete(DeleteBehavior.Restrict);
        }
    }
}
