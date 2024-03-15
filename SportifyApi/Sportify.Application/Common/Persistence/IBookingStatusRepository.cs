using Domain.Entities;
using Domain.Repository.Interfaces;

namespace Application.Common.Persistence
{
    public interface IBookingStatusRepository : IGenericRepository<BookingStatus,int>
    {
    }
}
