using Domain.Common;

namespace Domain.Entities;

public class BookingStatus : BaseAuditableEntity
{
    public Guid Id { get; set; }

    public string? Name { get; set; }
}
