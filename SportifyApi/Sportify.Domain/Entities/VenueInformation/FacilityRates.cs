using Domain.Base;

namespace Domain.Entities.VenueInformation;

public class FacilityRates: Entity<Guid>
{
    public Guid RatesId { get; set; }
    public Guid FacilityId { get; set; }
    public decimal Rate { get; set; }  
}