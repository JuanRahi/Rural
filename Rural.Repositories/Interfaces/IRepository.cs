using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Rural.Repositories.Interfaces
{
    public interface IRepository<T> where T : class
    {

        IQueryable<T> GetAll(Func<T, bool> predicate = null);

        T Get(Func<T, bool> predicate);

        Boolean Exist(Func<T, bool> predicate);

        void Add(T entity);

        void Update(T entity);

        void Attach(T entity);

        void Delete(T entity);

    }
}
