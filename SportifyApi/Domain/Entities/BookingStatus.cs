namespace Domain.Entities;

public class BookingStatus
{
    public int BookingStatusId { get; set; }

    public string BookingStatus1 { get; set; }

    public DateTime BookingStatusCreatedTimestamp { get; set; }

    public string BookingStatusCreatedBy { get; set; }

    public DateTime BookingStatusModifiedTimestamp { get; set; }

    public string BookingStatusModifiedBy { get; set; }

    public bool BookingStatusIsDeleted { get; set; }

    public virtual ICollection<Booking> Bookings { get; } = new List<Booking>();
}
