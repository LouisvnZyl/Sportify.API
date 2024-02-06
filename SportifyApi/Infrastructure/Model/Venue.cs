namespace Infrastructure.Model;

public partial class Venue
{
    public int VenueId { get; set; }

    public int? VenueImageId { get; set; }

    public int SportId { get; set; }

    public int? ReviewId { get; set; }

    public string VenueName { get; set; } = null!;

    public string VenueLocation { get; set; } = null!;

    public DateTime VenueCreatedTimestamp { get; set; }

    public string VenueCreatedBy { get; set; } = null!;

    public DateTime VenueModifiedTimestamp { get; set; }

    public string VenueModifiedBy { get; set; } = null!;

    public bool VenueIsDeleted { get; set; }

    public virtual ICollection<Booking> Bookings { get; } = new List<Booking>();

    public virtual ICollection<Preference> Preferences { get; } = new List<Preference>();

    public virtual Review? Review { get; set; }

    public virtual Sport Sport { get; set; } = null!;

    public virtual VenueImage? VenueImage { get; set; }
}
