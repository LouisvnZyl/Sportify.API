using Domain.Common;

namespace Domain.Entities;

public class Notification : BaseAuditableEntity
{
    public Guid Id { get; set; }

    public int NotificationTypeId { get; set; }

    public int PlayerId { get; set; }

    public string NotificationMessage { get; set; }

    public DateTime NotificationTimestamp { get; set; }
}
