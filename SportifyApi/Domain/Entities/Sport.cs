namespace Domain.Entities;

public class Sport
{
    public int SportId { get; set; }

    public string SportName { get; set; }

    public string SportType { get; set; }

    public DateTime SportCreatedTimestamp { get; set; }

    public string SportCreatedBy { get; set; }

    public DateTime SportModifiedTimestamp { get; set; }

    public string SportModifiedBy { get; set; }

    public bool SportIsDeleted { get; set; }

    public virtual ICollection<PlayerStat> PlayerStats { get; } = new List<PlayerStat>();

    public virtual ICollection<Preference> Preferences { get; } = new List<Preference>();

    public virtual ICollection<Venue> Venues { get; } = new List<Venue>();
}
