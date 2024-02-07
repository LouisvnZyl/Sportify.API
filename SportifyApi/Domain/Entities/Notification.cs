﻿namespace Domain.Entities;

public class Notification
{
    public int NotificationId { get; set; }

    public int NotificationTypeId { get; set; }

    public int PlayerId { get; set; }

    public string NotificationMessage { get; set; }

    public DateTime NotificationTimestamp { get; set; }

    public DateTime CreatedDate { get; set; }

    public string CreatedBy { get; set; }

    public DateTime ModifiedDate { get; set; }

    public string ModifiedBy { get; set; }

    public bool IsDeleted { get; set; }

    public virtual NotificationType NotificationType { get; set; }

    public virtual Player Player { get; set; }
}
