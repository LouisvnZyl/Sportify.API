namespace Domain.Entities;

public class Notification
{
    public int NotificationId { get; set; }

    public int NotificationTypeId { get; set; }

    public int PlayerId { get; set; }

    public string NotificationMessage { get; set; } = null!;

    public DateTime NotificationTimestamp { get; set; }

    public DateTime NotificationCreatedTimestamp { get; set; }

    public string NotificationCreatedBy { get; set; } = null!;

    public DateTime NotificationModifiedTimestamp { get; set; }

    public string NotificationModifiedBy { get; set; } = null!;

    public bool NotificationIsDeleted { get; set; }

    public virtual NotificationType NotificationType { get; set; } = null!;

    public virtual Player Player { get; set; } = null!;
}
