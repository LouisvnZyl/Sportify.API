namespace Domain.Entities;

public class Payment
{
    public int PaymentId { get; set; }

    public int BookingId { get; set; }

    public int PlayerId { get; set; }

    public int PaymentStatusId { get; set; }

    public DateTime PaymentTimestamp { get; set; }

    public decimal PaymentAmount { get; set; }

    public DateTime PaymentCreatedTimestamp { get; set; }

    public string PaymentCreatedBy { get; set; } = null!;

    public DateTime PaymentModifiedTimestamp { get; set; }

    public string PaymentModifiedBy { get; set; } = null!;

    public bool PaymentIsDeleted { get; set; }

    public virtual Booking Booking { get; set; } = null!;

    public virtual PaymentStatus PaymentStatus { get; set; } = null!;

    public virtual Player Player { get; set; } = null!;
}
