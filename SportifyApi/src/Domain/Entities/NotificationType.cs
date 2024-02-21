namespace Domain.Entities;

public class NotificationType : BaseAuditableEntity
{
    public Guid Id { get; set; }

    public string? Name { get; set; }
}
