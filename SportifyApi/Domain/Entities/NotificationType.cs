namespace Domain.Entities;

public class NotificationType
{
    public int NotificationTypeId { get; set; }

    public string NotificationType1 { get; set; }

    public DateTime NotificationTypeCreatedTimestamp { get; set; }

    public string NotificationTypeCreatedBy { get; set; }

    public DateTime NotificationTypeModifiedTimestamp { get; set; }

    public string NotificationTypeModifiedBy { get; set; }

    public bool NotificationTypeIsDeleted { get; set; }

    public virtual ICollection<Notification> Notifications { get; } = new List<Notification>();
}
