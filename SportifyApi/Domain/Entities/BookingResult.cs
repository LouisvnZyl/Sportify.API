namespace Domain.Entities;

public partial class BookingResult
{
    public int BookingResultId { get; set; }

    public string BookingResult1 { get; set; } = null!;

    public DateTime BookingResultCreatedTimestamp { get; set; }

    public string BookingResultCreatedBy { get; set; } = null!;

    public DateTime BookingResultModifiedTimestamp { get; set; }

    public string BookingResultModifiedBy { get; set; } = null!;

    public bool BookingResultIsDeleted { get; set; }

    public virtual ICollection<Booking> Bookings { get; } = new List<Booking>();
}
