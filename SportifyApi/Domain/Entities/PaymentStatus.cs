namespace Domain.Entities;

public class PaymentStatus
{
    public int PaymentStatusId { get; set; }

    public string PaymentStatus1 { get; set; }

    public DateTime PaymentStatusCreatedTimestamp { get; set; }

    public string PaymentStatusCreatedBy { get; set; }

    public DateTime PaymentStatusModifiedTimestamp { get; set; }

    public string PaymentStatusModifiedBy { get; set; }

    public bool PaymentStatusIsDeleted { get; set; }

    public virtual ICollection<Payment> Payments { get; } = new List<Payment>();
}
