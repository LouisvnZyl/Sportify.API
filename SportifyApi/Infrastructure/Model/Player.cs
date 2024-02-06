namespace Infrastructure.Model;

public partial class Player
{
    public int PlayerId { get; set; }

    public int? PreferenceId { get; set; }

    public string PlayerFirstName { get; set; } = null!;

    public string PlayerLastName { get; set; } = null!;

    public string PlayerEmailAddress { get; set; } = null!;

    public string? PlayerPhoneNumber { get; set; }

    public string? PlayerDateOfBirth { get; set; }

    public string? PlayerProfilePictureUrl { get; set; }

    public bool PlayerIsPremium { get; set; }

    public DateTime PlayerCreationTimestamp { get; set; }

    public DateTime PlayerCreatedTimestamp { get; set; }

    public string PlayerCreatedBy { get; set; } = null!;

    public DateTime PlayerModifiedTimestamp { get; set; }

    public string PlayerModifiedBy { get; set; } = null!;

    public bool PlayerIsDeleted { get; set; }

    public virtual ICollection<Booking> Bookings { get; } = new List<Booking>();

    public virtual ICollection<Notification> Notifications { get; } = new List<Notification>();

    public virtual ICollection<Payment> Payments { get; } = new List<Payment>();

    public virtual PlayerStat? PlayerStat { get; set; }

    public virtual Preference? Preference { get; set; }

    public virtual ICollection<Review> Reviews { get; } = new List<Review>();
}
