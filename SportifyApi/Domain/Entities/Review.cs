namespace Domain.Entities;

public class Review
{
    public int ReviewId { get; set; }

    public int PlayerId { get; set; }

    public string ReviewRating { get; set; }

    public string ReviewComment { get; set; }

    public DateTime ReviewTimestamp { get; set; }

    public DateTime ReviewCreatedTimestamp { get; set; }

    public string ReviewCreatedBy { get; set; }

    public DateTime ReviewModifiedTimestamp { get; set; }

    public string ReviewModifiedBy { get; set; }

    public bool ReviewIsDeleted { get; set; }

    public virtual Player Player { get; set; }

    public virtual ICollection<Venue> Venues { get; } = new List<Venue>();
}
