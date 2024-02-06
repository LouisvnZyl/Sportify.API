using Domain.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Infrastructure.Persistence.Configurations
{
    public class NotificationTypeConfigurations : IEntityTypeConfiguration<NotificationType>
    {
        public void Configure(EntityTypeBuilder<NotificationType> builder)
        {
            builder.ToTable("NotificationType");

            builder.Property(e => e.NotificationType1)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("NotificationType");

            builder.Property(e => e.NotificationTypeCreatedBy)
                .HasMaxLength(50)
                .IsUnicode(false);

            builder.Property(e => e.NotificationTypeCreatedTimestamp).HasColumnType("datetime");

            builder.Property(e => e.NotificationTypeModifiedBy)
                .HasMaxLength(50)
                .IsUnicode(false);

            builder.Property(e => e.NotificationTypeModifiedTimestamp).HasColumnType("datetime");
        }
    }
}
