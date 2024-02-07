﻿namespace Domain.Entities;

public class BookingStatus
{
    public int BookingStatusId { get; set; }

    public string BookingStatus1 { get; set; }

    public DateTime CreatedDate { get; set; }

    public string CreatedBy { get; set; }

    public DateTime ModifiedDate { get; set; }

    public string ModifiedBy { get; set; }

    public bool IsDeleted { get; set; }

    public virtual ICollection<Booking> Bookings { get; } = new List<Booking>();
}
