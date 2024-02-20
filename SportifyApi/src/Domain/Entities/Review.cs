using Domain.Common;

namespace Domain.Entities;

public class Review : BaseAuditableEntity
{
    public Guid Id { get; set; }

    public int PlayerId { get; set; }

    public string? ReviewRating { get; set; }

    public string? ReviewComment { get; set; }

    public DateTime ReviewTimestamp { get; set; }
}

