namespace Domain.Entities;

public partial class PaymentStatus
{
    public int PaymentStatusId { get; set; }

    public string PaymentStatus1 { get; set; } = null!;

    public DateTime PaymentStatusCreatedTimestamp { get; set; }

    public string PaymentStatusCreatedBy { get; set; } = null!;

    public DateTime PaymentStatusModifiedTimestamp { get; set; }

    public string PaymentStatusModifiedBy { get; set; } = null!;

    public bool PaymentStatusIsDeleted { get; set; }

    public virtual ICollection<Payment> Payments { get; } = new List<Payment>();
}
