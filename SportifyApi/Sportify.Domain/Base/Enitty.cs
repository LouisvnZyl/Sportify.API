using System.ComponentModel.DataAnnotations.Schema;
using Domain.Base.Interfaces;

namespace Domain.Base
{
    public abstract class Entity<T> : IEntity<T>
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public T Id { get; set; }
    }
}