namespace Domain.Entities;

public class PaymentStatus : IEntity
{
    public Guid Id { get; set; }

    public string Name { get; set; }

    public DateTime CreatedDate { get; set; }

    public string CreatedBy { get; set; }

    public DateTime ModifiedDate { get; set; }

    public string ModifiedBy { get; set; }

    public bool IsDeleted { get; set; }
}
