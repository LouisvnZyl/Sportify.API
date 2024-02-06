namespace Domain.Entities;

public class NotificationType
{
    public int NotificationTypeId { get; set; }

    public string NotificationType1 { get; set; } = null!;

    public DateTime NotificationTypeCreatedTimestamp { get; set; }

    public string NotificationTypeCreatedBy { get; set; } = null!;

    public DateTime NotificationTypeModifiedTimestamp { get; set; }

    public string NotificationTypeModifiedBy { get; set; } = null!;

    public bool NotificationTypeIsDeleted { get; set; }

    public virtual ICollection<Notification> Notifications { get; } = new List<Notification>();
}
