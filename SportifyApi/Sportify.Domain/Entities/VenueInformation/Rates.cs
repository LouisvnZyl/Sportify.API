using Domain.Base;

namespace Domain.Entities.VenueInformation;

public class Rates : Entity<Guid>
{
    public DateTime StartTime { get; set; }
    public DateTime EndTime { get; set; }
    public string Name { get; set; }
}