using Domain.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Infrastructure.Persistence.Configurations
{
    public class PaymentStatusConfiguration : IEntityTypeConfiguration<PaymentStatus>
    {
        public void Configure(EntityTypeBuilder<PaymentStatus> builder)
        {
            builder.ToTable("PaymentStatus");

            builder.Property(e => e.PaymentStatus1)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("PaymentStatus");

            builder.Property(e => e.PaymentStatusCreatedBy)
                .HasMaxLength(50)
                .IsUnicode(false);

            builder.Property(e => e.PaymentStatusCreatedTimestamp).HasColumnType("datetime");

            builder.Property(e => e.PaymentStatusModifiedBy)
                .HasMaxLength(50)
                .IsUnicode(false);

            builder.Property(e => e.PaymentStatusModifiedTimestamp).HasColumnType("datetime");
        }
    }
}
