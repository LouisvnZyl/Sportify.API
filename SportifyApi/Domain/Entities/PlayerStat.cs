namespace Domain.Entities;

public class PlayerStat
{
    public int PlayerStatId { get; set; }

    public int PlayerId { get; set; }

    public int SportId { get; set; }

    public short PlayerStatMatchCount { get; set; }

    public short PlayerStatWinCount { get; set; }

    public short PlayerStatLossCount { get; set; }

    public short PlayerStatDrawCount { get; set; }

    public decimal PlayerStatRating { get; set; }

    public DateTime PlayerStatCreatedTimestamp { get; set; }

    public string PlayerStatCreatedBy { get; set; }

    public DateTime PlayerStatModifiedTimestamp { get; set; }

    public string PlayerStatModifiedBy { get; set; }

    public bool PlayerStatIsDeleted { get; set; }

    public virtual Player Player { get; set; }

    public virtual Sport Sport { get; set; }
}
