namespace Domain.Entities;

public class Sport
{
    public int SportId { get; set; }

    public string SportName { get; set; }

    public string SportType { get; set; }

    public DateTime CreatedDate { get; set; }

    public string CreatedBy { get; set; }

    public DateTime ModifiedDate { get; set; }

    public string ModifiedBy { get; set; }

    public bool IsDeleted { get; set; }

    public virtual ICollection<PlayerStat> PlayerStats { get; } = new List<PlayerStat>();

    public virtual ICollection<Preference> Preferences { get; } = new List<Preference>();

    public virtual ICollection<Venue> Venues { get; } = new List<Venue>();
}
