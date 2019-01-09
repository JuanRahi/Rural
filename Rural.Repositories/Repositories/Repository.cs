using Microsoft.EntityFrameworkCore;
using Rural.Database.DA;
using Rural.Repositories.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Rural.Repositories.Repositories
{
    public class Repository<T> : IRepository<T> where T : class
    {
        private RuralDatabaseContext context { get; set; }
        private DbSet<T> _objectSet;

        public Repository(RuralDatabaseContext context)
        {
            this.context = context;
            _objectSet = context.Set<T>();
        }

        public IQueryable<T> GetAll(Func<T, bool> predicate = null)
        {
            if (predicate != null)
            {
                return _objectSet.Where(predicate).AsQueryable<T>();
            }
            return _objectSet.AsQueryable<T>();
        }

        public T Get(Func<T, bool> predicate)
        {
            return _objectSet.FirstOrDefault(predicate);
        }

        public Boolean Exist(Func<T, bool> predicate)
        {
            return _objectSet.Where(predicate).Any();
        }

        public void Add(T entity)
        {
            _objectSet.Add(entity);
        }

        public void Update(T entity)
        {
            context.Entry<T>(entity).State = EntityState.Modified;
        }

        public void Attach(T entity)
        {
            _objectSet.Attach(entity);
        }

        public void Delete(T entity)
        {
            _objectSet.Remove(entity);
        }
    }
}
