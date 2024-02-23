namespace Domain.Entities;

public class PaymentStatus : BaseAuditableEntity
{
    public Guid Id { get; set; }

    public string? Name { get; set; }
}
