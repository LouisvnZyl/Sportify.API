using Domain.Base;

namespace Domain.Entities.VenueInformation;

public class SportType: Entity<int>
{
    public string Name { get; set; }
    public string Description { get; set; }
}