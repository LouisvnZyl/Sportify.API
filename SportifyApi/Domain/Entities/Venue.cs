namespace Domain.Entities;

public class Venue
{
    public int VenueId { get; set; }

    public int? VenueImageId { get; set; }

    public int SportId { get; set; }

    public int? ReviewId { get; set; }

    public string VenueName { get; set; }

    public string VenueLocation { get; set; }

    public DateTime CreatedDate { get; set; }

    public string CreatedBy { get; set; }

    public DateTime ModifiedDate { get; set; }

    public string ModifiedBy { get; set; }

    public bool IsDeleted { get; set; }

    public virtual ICollection<Booking> Bookings { get; } = new List<Booking>();

    public virtual ICollection<Preference> Preferences { get; } = new List<Preference>();

    public virtual Review Review { get; set; }

    public virtual Sport Sport { get; set; }

    public virtual VenueImage VenueImage { get; set; }
}
