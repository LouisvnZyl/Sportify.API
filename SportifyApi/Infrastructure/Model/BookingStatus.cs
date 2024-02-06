namespace Infrastructure.Model;

public partial class BookingStatus
{
    public int BookingStatusId { get; set; }

    public string BookingStatus1 { get; set; } = null!;

    public DateTime BookingStatusCreatedTimestamp { get; set; }

    public string BookingStatusCreatedBy { get; set; } = null!;

    public DateTime BookingStatusModifiedTimestamp { get; set; }

    public string BookingStatusModifiedBy { get; set; } = null!;

    public bool BookingStatusIsDeleted { get; set; }

    public virtual ICollection<Booking> Bookings { get; } = new List<Booking>();
}
