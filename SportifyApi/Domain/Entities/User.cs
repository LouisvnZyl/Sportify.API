using Domain.Common;

namespace Domain.Entities;

public class User : BaseAuditableEntity
{ 
    public Guid Id { get; set; }

    public string Email { get; set; }

    public string Username { get; set; }

    public string Password { get; set; }

    public virtual Player Player { get; set; }
}