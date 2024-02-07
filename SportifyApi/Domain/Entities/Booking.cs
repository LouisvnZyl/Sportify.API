namespace Domain.Entities;

public class Booking
{
    public Guid Id { get; set; }

    public Guid PlayerId { get; set; }

    public Guid VenueId { get; set; }

    public Guid BookingStatusId { get; set; }

    public Guid BookingResultId { get; set; }

    public string? BookingTeam { get; set; }

    public DateTime BookingDate { get; set; }

    public short BookingDuration { get; set; }

    public DateTime CreatedDate { get; set; }

    public string CreatedBy { get; set; }

    public DateTime ModifiedDate { get; set; }

    public string ModifiedBy { get; set; }

    public bool IsDeleted { get; set; }

    public virtual BookingResult? BookingResult { get; set; }

    public virtual BookingStatus BookingStatus { get; set; }

    public virtual ICollection<Payment> Payments { get; } = new List<Payment>();

    public virtual Player Player { get; set; }

    public virtual Venue Venue { get; set; }
}
