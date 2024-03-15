using Domain.Base;

namespace Domain.Entities.VenueInformation;

public class VenueImage : Entity<Guid>
{
    public string? VenueImageUrl { get; set; }
}