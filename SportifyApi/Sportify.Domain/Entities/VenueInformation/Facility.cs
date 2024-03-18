using Domain.Base;

namespace Domain.Entities.VenueInformation;

public class Facility: Entity<Guid>
{
    public string Name { get; set; }
    public SportType Type { get; set; }
    public IEnumerable<Tag> Tags { get; set; }
    public IEnumerable<Rates> Rates { get; set; }
}