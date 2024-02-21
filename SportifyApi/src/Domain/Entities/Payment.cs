namespace Domain.Entities;

public class Payment : BaseAuditableEntity
{
    public Guid Id { get; set; }

    public int BookingId { get; set; }

    public int PlayerId { get; set; }

    public int PaymentStatusId { get; set; }

    public DateTime PaymentTimestamp { get; set; }

    public decimal PaymentAmount { get; set; }
}
