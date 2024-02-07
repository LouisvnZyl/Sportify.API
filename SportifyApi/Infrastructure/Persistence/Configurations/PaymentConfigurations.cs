using Domain.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Infrastructure.Persistence.Configurations
{
    public class PaymentConfigurations : IEntityTypeConfiguration<Payment>
    {
        public void Configure(EntityTypeBuilder<Payment> builder)
        {
            builder.ToTable("Payment");

            builder.Property(e => e.PaymentAmount)
                .HasColumnType("decimal")
                .HasPrecision(18, 2);

            builder.Property(e => e.PaymentCreatedBy)
                .HasMaxLength(50)
                .IsUnicode(false);

            builder.Property(e => e.PaymentCreatedTimestamp)
                .HasColumnType("datetime");

            builder.Property(e => e.PaymentModifiedBy)
                .HasMaxLength(50)
                .IsUnicode(false);

            builder.Property(e => e.PaymentModifiedTimestamp)
                .HasColumnType("datetime");

            builder.Property(e => e.PaymentTimestamp)
                .HasColumnType("datetime");

            builder.HasOne(d => d.Booking).WithMany(p => p.Payments)
                .HasForeignKey(d => d.BookingId)
                .OnDelete(DeleteBehavior.NoAction)
                .HasConstraintName("FK_Payment_Booking");

            builder.HasOne(d => d.PaymentStatus).WithMany(p => p.Payments)
                .HasForeignKey(d => d.PaymentStatusId)
                .OnDelete(DeleteBehavior.NoAction)
                .HasConstraintName("FK_Payment_PaymentStatus");

            builder
                .HasOne(d => d.Player)
                .WithMany(p => p.Payments)
                .HasForeignKey(d => d.PlayerId)
                .OnDelete(DeleteBehavior.NoAction)
                .HasConstraintName("FK_Payment_Player");
        }
    }
}
