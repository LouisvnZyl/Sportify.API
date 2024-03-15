namespace Domain.Repository.Interfaces
{
    public interface IGenericRepository<TEntity, Tkey> where TEntity : class
    {
        IQueryable<TEntity> GetAll();

        Task<TEntity> GetByIdAsync(Tkey id);

        Task AddAsync(TEntity entity);

        Task Update(TEntity entity);

        Task Delete(Tkey id);
    }
}
