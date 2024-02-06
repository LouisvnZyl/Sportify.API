namespace Infrastructure.Model;

public partial class Booking
{
    public int BookingId { get; set; }

    public int PlayerId { get; set; }

    public int VenueId { get; set; }

    public int BookingStatusId { get; set; }

    public int BookingResultId { get; set; }

    public string BookingTeam { get; set; } = null!;

    public DateTime BookingDate { get; set; }

    public TimeSpan BookingTime { get; set; }

    public short BookingDuration { get; set; }

    public DateTime BookingCreatedTimestamp { get; set; }

    public string BookingCreatedBy { get; set; } = null!;

    public DateTime BookingModifiedTimestamp { get; set; }

    public string BookingModifiedBy { get; set; } = null!;

    public bool BookingIsDeleted { get; set; }

    public virtual BookingResult BookingResult { get; set; } = null!;

    public virtual BookingStatus BookingStatus { get; set; } = null!;

    public virtual ICollection<Payment> Payments { get; } = new List<Payment>();

    public virtual Player Player { get; set; } = null!;

    public virtual Venue Venue { get; set; } = null!;
}
