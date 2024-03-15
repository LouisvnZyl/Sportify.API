using Application.Common.Persistence;
using Infrastructure.Persistence.DatabaseContext;
using Infrastructure.Persistence.Interface.UnitOfWork;
using Infrastructure.Persistence.Repositories;

namespace Infrastructure.Persistence.UnitOfWork;

public class SportifyUnitOfWork:UnitOfWork<SportifyContext>,ISportifyUnitOfWork
{
    public SportifyUnitOfWork(SportifyContext dbContext) : base(dbContext)
    {
    }

    protected override void Initialize(SportifyContext dbContext)
    {
        PlayerRepository = new PlayerRepository(dbContext);
    }

    public IPlayerRepository PlayerRepository { get; set; }
}