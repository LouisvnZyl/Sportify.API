namespace Domain.Entities;

public class Preference
{
    public int PreferenceId { get; set; }

    public int? SportId { get; set; }

    public int? VenueId { get; set; }

    public DateTime PreferenceCreatedTimestamp { get; set; }

    public string PreferenceCreatedBy { get; set; }

    public DateTime PreferenceModifiedTimestamp { get; set; }

    public string PreferenceModifiedBy { get; set; }

    public bool PreferenceIsDeleted { get; set; }

    public virtual ICollection<Player> Players { get; } = new List<Player>();

    public virtual Sport? Sport { get; set; }

    public virtual Venue? Venue { get; set; }
}
