namespace Domain.Entities;

public class Booking
{
    public int BookingId { get; set; }

    public int PlayerId { get; set; }

    public int VenueId { get; set; }

    public int BookingStatusId { get; set; }

    public int BookingResultId { get; set; }

    public string? BookingTeam { get; set; }

    public DateTime BookingDate { get; set; }

    public TimeSpan BookingTime { get; set; }

    public short BookingDuration { get; set; }

    public DateTime BookingCreatedTimestamp { get; set; }

    public string BookingCreatedBy { get; set; }

    public DateTime BookingModifiedTimestamp { get; set; }

    public string BookingModifiedBy { get; set; }

    public bool BookingIsDeleted { get; set; }

    public virtual BookingResult? BookingResult { get; set; }

    public virtual BookingStatus BookingStatus { get; set; }

    public virtual ICollection<Payment> Payments { get; } = new List<Payment>();

    public virtual Player Player { get; set; }

    public virtual Venue Venue { get; set; }
}
