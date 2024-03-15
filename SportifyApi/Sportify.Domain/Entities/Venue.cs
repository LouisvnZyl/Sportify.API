using Domain.Base;

namespace Domain.Entities;

public class Venue : Entity<Guid>
{
    public int? VenueImageId { get; set; }

    public int SportId { get; set; }

    public int? ReviewId { get; set; }

    public string? VenueName { get; set; }

    public string? VenueLocation { get; set; }
}