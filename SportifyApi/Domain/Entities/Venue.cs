namespace Domain.Entities;

public class Venue
{
    public int VenueId { get; set; }

    public int? VenueImageId { get; set; }

    public int SportId { get; set; }

    public int? ReviewId { get; set; }

    public string VenueName { get; set; }

    public string VenueLocation { get; set; }

    public DateTime VenueCreatedTimestamp { get; set; }

    public string VenueCreatedBy { get; set; }

    public DateTime VenueModifiedTimestamp { get; set; }

    public string VenueModifiedBy { get; set; }

    public bool VenueIsDeleted { get; set; }

    public virtual ICollection<Booking> Bookings { get; } = new List<Booking>();

    public virtual ICollection<Preference> Preferences { get; } = new List<Preference>();

    public virtual Review Review { get; set; }

    public virtual Sport Sport { get; set; }

    public virtual VenueImage VenueImage { get; set; }
}
