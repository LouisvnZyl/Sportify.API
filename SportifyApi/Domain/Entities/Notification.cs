namespace Domain.Entities;

public class Notification
{
    public int NotificationId { get; set; }

    public int NotificationTypeId { get; set; }

    public int PlayerId { get; set; }

    public string NotificationMessage { get; set; }

    public DateTime NotificationTimestamp { get; set; }

    public DateTime NotificationCreatedTimestamp { get; set; }

    public string NotificationCreatedBy { get; set; }

    public DateTime NotificationModifiedTimestamp { get; set; }

    public string NotificationModifiedBy { get; set; }

    public bool NotificationIsDeleted { get; set; }

    public virtual NotificationType NotificationType { get; set; }

    public virtual Player Player { get; set; }
}
