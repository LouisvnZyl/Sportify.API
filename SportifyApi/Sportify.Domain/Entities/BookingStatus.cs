using Domain.Base;

namespace Domain.Entities;

public class BookingStatus : Entity<int>
{
    /// <summary>
    /// Ef trickery
    /// </summary>
    public BookingStatus()
    {
        
    }
    public string? Name { get; set; }
}
