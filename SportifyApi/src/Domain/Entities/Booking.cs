namespace Domain.Entities;

public class Booking : BaseAuditableEntity
{
    public Guid Id { get; set; }

    public Guid PlayerId { get; set; }

    public Guid VenueId { get; set; }

    public Guid BookingStatusId { get; set; }

    public Guid BookingResultId { get; set; }

    public string? BookingTeam { get; set; }

    public DateTime BookingDate { get; set; }

    public short BookingDuration { get; set; }
}
