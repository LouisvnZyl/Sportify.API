namespace Domain.Entities;

public class BookingResult
{
    public int BookingResultId { get; set; }

    public string BookingResult1 { get; set; }

    public DateTime BookingResultCreatedTimestamp { get; set; }

    public string BookingResultCreatedBy { get; set; }

    public DateTime BookingResultModifiedTimestamp { get; set; }

    public string BookingResultModifiedBy { get; set; }

    public bool BookingResultIsDeleted { get; set; }

    public virtual ICollection<Booking> Bookings { get; } = new List<Booking>();
}
