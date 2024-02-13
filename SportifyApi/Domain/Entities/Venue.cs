namespace Domain.Entities;

public class Venue : IEntity
{
    public Guid Id { get; set; }

    public int? VenueImageId { get; set; }

    public int SportId { get; set; }

    public int? ReviewId { get; set; }

    public string VenueName { get; set; }

    public string VenueLocation { get; set; }

    public DateTime CreatedDate { get; set; }

    public string CreatedBy { get; set; }

    public DateTime ModifiedDate { get; set; }

    public string ModifiedBy { get; set; }

    public bool IsDeleted { get; set; }
}
