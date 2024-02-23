namespace Domain.Entities;

public class PlayerStat : BaseAuditableEntity
{
    public Guid Id { get; set; }

    public Guid PlayerId { get; set; }

    public Guid SportId { get; set; }

    public int MatchCount { get; set; }

    public int WinCount { get; set; }

    public int LossCount { get; set; }

    public int DrawCount { get; set; }

    public decimal PlayerRating { get; set; }

    public Player Player { get; set; } = null!;

    public Sport Sport { get; set; } = null!;
}
