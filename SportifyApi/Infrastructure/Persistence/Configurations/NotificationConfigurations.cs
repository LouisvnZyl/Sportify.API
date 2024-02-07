using Domain.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Infrastructure.Persistence.Configurations
{
    public class NotificationConfigurations : IEntityTypeConfiguration<Notification>
    {
        public void Configure(EntityTypeBuilder<Notification> builder)
        {
            builder.ToTable("Notification");

            builder.Property(e => e.NotificationCreatedBy)
                .HasMaxLength(50)
                .IsUnicode(false);

            builder.Property(e => e.NotificationCreatedTimestamp).HasColumnType("datetime");

            builder.Property(e => e.NotificationMessage)
                .HasMaxLength(50)
                .IsUnicode(false);

            builder.Property(e => e.NotificationModifiedBy)
                .HasMaxLength(50)
                .IsUnicode(false);

            builder.Property(e => e.NotificationModifiedTimestamp).HasColumnType("datetime");

            builder.Property(e => e.NotificationTimestamp).HasColumnType("datetime");

            builder.HasOne(d => d.NotificationType).WithMany(p => p.Notifications)
                .HasForeignKey(d => d.NotificationTypeId)
                .OnDelete(DeleteBehavior.NoAction)
                .HasConstraintName("FK_Notification_NotificationType");

            builder.HasOne(d => d.Player).WithMany(p => p.Notifications)
                .HasForeignKey(d => d.PlayerId)
                .OnDelete(DeleteBehavior.NoAction)
                .HasConstraintName("FK_Notification_Player");
        }
    }
}
