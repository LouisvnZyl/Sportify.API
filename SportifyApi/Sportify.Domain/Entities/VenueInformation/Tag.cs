using Domain.Base;

namespace Domain.Entities.VenueInformation;

public class Tag: Entity<int>
{
    public string Name { get; set; }
    public string Description { get; set; }
}