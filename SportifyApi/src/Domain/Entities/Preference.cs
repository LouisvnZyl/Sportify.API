namespace Domain.Entities;

public class Preference : BaseAuditableEntity
{
    public Guid Id { get; set; }

    public int? SportId { get; set; }

    public int? VenueId { get; set; }
}
