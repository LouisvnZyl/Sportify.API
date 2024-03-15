using Application.Common.Persistence;
using Infrastructure.Persistence.Interface.Base;

namespace Infrastructure.Persistence.Interface.UnitOfWork;

public interface ISportifyUnitOfWork : IUnitOfWork<IDbContext>
{
    IPlayerRepository PlayerRepository { get; set; }
}