namespace Domain.Entities;

public class Review
{
    public int ReviewId { get; set; }

    public int PlayerId { get; set; }

    public string ReviewRating { get; set; }

    public string ReviewComment { get; set; }

    public DateTime ReviewTimestamp { get; set; }

    public DateTime CreatedDate { get; set; }

    public string CreatedBy { get; set; }

    public DateTime ModifiedDate { get; set; }

    public string ModifiedBy { get; set; }

    public bool IsDeleted { get; set; }

    public virtual Player Player { get; set; }

    public virtual ICollection<Venue> Venues { get; } = new List<Venue>();
}
