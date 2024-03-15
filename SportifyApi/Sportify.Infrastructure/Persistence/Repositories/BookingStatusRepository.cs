using Application.Common.Persistence;
using Domain.Entities;
using Infrastructure.Persistence.Interface.Base;

namespace Infrastructure.Persistence.Repositories
{
    public class BookingStatusRepository : GenericRepository<BookingStatus,int>, IBookingStatusRepository
    {
        public BookingStatusRepository(IDbContext dbContext) : base(dbContext)
        {
        }
    }
}
