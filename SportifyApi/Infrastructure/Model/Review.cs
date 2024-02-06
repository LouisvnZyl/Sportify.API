namespace Infrastructure.Model;

public partial class Review
{
    public int ReviewId { get; set; }

    public int PlayerId { get; set; }

    public string ReviewRating { get; set; } = null!;

    public string ReviewComment { get; set; } = null!;

    public DateTime ReviewTimestamp { get; set; }

    public DateTime ReviewCreatedTimestamp { get; set; }

    public string ReviewCreatedBy { get; set; } = null!;

    public DateTime ReviewModifiedTimestamp { get; set; }

    public string ReviewModifiedBy { get; set; } = null!;

    public bool ReviewIsDeleted { get; set; }

    public virtual Player Player { get; set; } = null!;

    public virtual ICollection<Venue> Venues { get; } = new List<Venue>();
}
