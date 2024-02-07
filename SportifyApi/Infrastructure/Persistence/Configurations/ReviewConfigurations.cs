using Domain.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Infrastructure.Persistence.Configurations
{
    public class ReviewConfigurations : IEntityTypeConfiguration<Review>
    {
        public void Configure(EntityTypeBuilder<Review> builder)
        {
            builder.ToTable("Review");

            builder.Property(e => e.ReviewComment)
                .HasMaxLength(50)
                .IsUnicode(false);

            builder.Property(e => e.ReviewCreatedBy)
                .HasMaxLength(50)
                .IsUnicode(false);

            builder.Property(e => e.ReviewCreatedTimestamp).HasColumnType("datetime");

            builder.Property(e => e.ReviewModifiedBy)
                .HasMaxLength(50)
                .IsUnicode(false);

            builder.Property(e => e.ReviewModifiedTimestamp).HasColumnType("datetime");

            builder.Property(e => e.ReviewRating)
                .HasMaxLength(50)
                .IsUnicode(false);

            builder.Property(e => e.ReviewTimestamp).HasColumnType("datetime");

            builder.HasOne(d => d.Player).WithMany(p => p.Reviews)
                .HasForeignKey(d => d.PlayerId)
                .OnDelete(DeleteBehavior.NoAction)
                .HasConstraintName("FK_Review_Player");
        }
    }
}
