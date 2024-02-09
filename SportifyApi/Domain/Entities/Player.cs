using Domain.Entities;

public class Player : IEntity
{
    public Guid Id { get; set; }

    public Guid UserId { get; set; }

    public string FirstName { get; set; }

    public string LastName { get; set; }

    public string Nickname { get; set; }

    public string PhoneNumber { get; set; }

    public DateTime DateOfBirth { get; set; }

    public string? ProfilePictureUrl { get; set; }

    public DateTime CreatedDate { get; set; }

    public string CreatedBy { get; set; }

    public DateTime ModifiedDate { get; set; }

    public string ModifiedBy { get; set; }

    public bool IsDeleted { get; set; }

    public virtual User User { get; set; }
}
