using Domain.Base;

namespace Domain.Entities.VenueInformation;

public class Venue : Entity<Guid>
{
    public IEnumerable<VenueImage>? VenueImageId { get; set; }
    public string Name { get; set; }
    public decimal Longitude { get; set; }
    public decimal Lattitude { get; set; }
    public string Description { get; set; }
    public string ContactInformation { get; set; }
    public DateTime OpeningTime { get; set; }
    public DateTime ClosingTime { get; set; }
}