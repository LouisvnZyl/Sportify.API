namespace Domain.Entities;

public class Preference
{
    public Guid Id { get; set; }

    public int? SportId { get; set; }

    public int? VenueId { get; set; }

    public DateTime CreatedDate { get; set; }

    public string CreatedBy { get; set; }

    public DateTime ModifiedDate { get; set; }

    public string ModifiedBy { get; set; }

    public bool IsDeleted { get; set; }

    public virtual ICollection<Player> Players { get; } = new List<Player>();

    public virtual Sport? Sport { get; set; }

    public virtual Venue? Venue { get; set; }
}
