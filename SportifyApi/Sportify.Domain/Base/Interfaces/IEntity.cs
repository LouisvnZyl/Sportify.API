using System.Runtime.CompilerServices;

[assembly: InternalsVisibleTo("Sportify.Infrastructure")]

namespace Domain.Base.Interfaces
{
    internal interface IEntity<T>
    {
        public T Id { get; }
    }
}