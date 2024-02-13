﻿using System.ComponentModel.DataAnnotations;

namespace Domain.Entities;

public class Payment : IEntity
{
    public Guid Id { get; set; }

    public int BookingId { get; set; }

    public int PlayerId { get; set; }

    public int PaymentStatusId { get; set; }

    public DateTime PaymentTimestamp { get; set; }

    public decimal PaymentAmount { get; set; }

    public DateTime CreatedDate { get; set; }

    public string CreatedBy { get; set; }

    public DateTime ModifiedDate { get; set; }

    public string ModifiedBy { get; set; }

    public bool IsDeleted { get; set; }
}
