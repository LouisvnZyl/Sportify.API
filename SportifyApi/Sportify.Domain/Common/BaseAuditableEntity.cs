namespace Domain.Common;

public abstract class BaseAuditableEntity
{
    public DateTimeOffset CreatedDate { get; set; }

    public string? CreatedBy { get; set; }

    public DateTimeOffset ModifiedDate { get; set; }

    public string? ModifiedBy { get; set; }

    public bool? IsDeleted { get; set; }
}
