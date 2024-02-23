using Application.Common.Persistence;
using Domain.Entities;

namespace Infrastructure.Persistence.Repositories
{
    public class BookingStatusRepository : BaseRepository<BookingStatus>, IBookingStatusRepository
    {
        public BookingStatusRepository(SportifyContext dbContext) : base(dbContext)
        {
        }
    }
}
