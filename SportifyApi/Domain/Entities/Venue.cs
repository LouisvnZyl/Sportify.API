using Domain.Common;

namespace Domain.Entities;

public class Venue : BaseAuditableEntity
{
    public Guid Id { get; set; }

    public int? VenueImageId { get; set; }

    public int SportId { get; set; }

    public int? ReviewId { get; set; }

    public string VenueName { get; set; }

    public string VenueLocation { get; set; }
}
