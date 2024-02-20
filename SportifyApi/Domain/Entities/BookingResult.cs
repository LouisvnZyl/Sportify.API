using Domain.Common;

namespace Domain.Entities;

public class BookingResult : BaseAuditableEntity
{
    public Guid Id { get; set; }

    public string BookingResult1 { get; set; }
}
