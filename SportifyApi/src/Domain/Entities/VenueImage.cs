using Domain.Common;

namespace Domain.Entities;

public class VenueImage : BaseAuditableEntity
{
    public Guid Id { get; set; }

    public string? VenueImageUrl { get; set; }
}
