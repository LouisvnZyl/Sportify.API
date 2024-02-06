namespace Domain.Entities;

public class Sport
{
    public int SportId { get; set; }

    public string SportName { get; set; } = null!;

    public string SportType { get; set; } = null!;

    public DateTime SportCreatedTimestamp { get; set; }

    public string SportCreatedBy { get; set; } = null!;

    public DateTime SportModifiedTimestamp { get; set; }

    public string SportModifiedBy { get; set; } = null!;

    public bool SportIsDeleted { get; set; }

    public virtual ICollection<PlayerStat> PlayerStats { get; } = new List<PlayerStat>();

    public virtual ICollection<Preference> Preferences { get; } = new List<Preference>();

    public virtual ICollection<Venue> Venues { get; } = new List<Venue>();
}
