using Domain.Common;

namespace Domain.Entities;

public class Player : BaseAuditableEntity
{
    public Guid Id { get; set; }

    public Guid UserId { get; set; }

    public string? FirstName { get; set; }

    public string? LastName { get; set; }

    public string? Nickname { get; set; }

    public string? PhoneNumber { get; set; }

    public DateTime DateOfBirth { get; set; }

    public string? ProfilePictureUrl { get; set; }

    public virtual User User { get; set; } = null!;

    public virtual ICollection<PlayerStat> PlayerStats { get; set; } = new List<PlayerStat>();
}
