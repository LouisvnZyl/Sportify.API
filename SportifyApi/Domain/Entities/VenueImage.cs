namespace Domain.Entities;

public class VenueImage
{
    public int VenueImageId { get; set; }

    public string VenueImageUrl { get; set; }

    public DateTime VenueImageCreatedTimestamp { get; set; }

    public string VenueImageCreatedBy { get; set; }

    public DateTime VenueImageModifiedTimestamp { get; set; }

    public string VenueImageModifiedBy { get; set; }

    public bool VenueImageIsDeleted { get; set; }

    public virtual ICollection<Venue> Venues { get; } = new List<Venue>();
}
