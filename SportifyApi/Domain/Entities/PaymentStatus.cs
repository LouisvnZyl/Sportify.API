﻿namespace Domain.Entities;

public class PaymentStatus
{
    public int PaymentStatusId { get; set; }

    public string PaymentStatus1 { get; set; }

    public DateTime CreatedDate { get; set; }

    public string CreatedBy { get; set; }

    public DateTime ModifiedDate { get; set; }

    public string ModifiedBy { get; set; }

    public bool IsDeleted { get; set; }

    public virtual ICollection<Payment> Payments { get; } = new List<Payment>();
}
