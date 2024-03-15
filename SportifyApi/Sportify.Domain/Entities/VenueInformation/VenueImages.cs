using Domain.Base;

namespace Domain.Entities.VenueInformation;

public class VenueImages: Entity<Guid>
{
    public string BlobStorageUri { get; set; }
}