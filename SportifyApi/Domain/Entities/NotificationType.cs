namespace Domain.Entities;

public class NotificationType
{
    public int NotificationTypeId { get; set; }

    public string NotificationType1 { get; set; }

    public DateTime CreatedDate { get; set; }

    public string CreatedBy { get; set; }

    public DateTime ModifiedDate { get; set; }

    public string ModifiedBy { get; set; }

    public bool IsDeleted { get; set; }

    public virtual ICollection<Notification> Notifications { get; } = new List<Notification>();
}
