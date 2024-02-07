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

    public DateTime CreatedDate { get; set; }

    public string CreatedBy { get; set; }

    public DateTime ModifiedDate { get; set; }

    public string ModifiedBy { get; set; }

    public bool IsDeleted { get; set; }

    public virtual Player Player { get; set; }

    public virtual Sport Sport { get; set; }
}
