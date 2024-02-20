using Domain.Common;

namespace Domain.Entities;

public class Sport : BaseAuditableEntity
{   
    public Guid Id { get; set; }

    public string? Name { get; set; }

    public string? Type { get; set; }
}
