namespace Domain.Entities;

public class PlayerStat : IEntity
{
    public Guid Id { get; set; }

    public Guid PlayerId { get; set; }

    public Guid SportId { get; set; }

    public int MatchCount { get; set; }

    public int WinCount { get; set; }

    public int LossCount { get; set; }

    public int DrawCount { get; set; }

    public decimal PlayerRating { get; set; }

    public DateTime CreatedDate { get; set; }

    public string CreatedBy { get; set; }

    public DateTime ModifiedDate { get; set; }

    public string ModifiedBy { get; set; }

    public bool IsDeleted { get; set; }

    public Player Player { get; set; }

    public Sport Sport { get; set; }
}
