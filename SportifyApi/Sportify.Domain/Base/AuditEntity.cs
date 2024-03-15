﻿namespace Domain.Base;

public abstract class AuditEntity<T> : Entity<T>
{
    public DateTime CreatedDate { get; set; }
    public DateTime ModifiedDate { get; set; }
    public string CreatedBy { get; set; }
    public string ModifiedBy { get; set; }
}