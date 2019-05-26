using Rural.Database.DA;
using Rural.Repositories.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Rural.Repositories.Repositories
{
    public class BovineRepository<BovineResult>: DapperRepository<BovineResult>, IDapperRepository<BovineResult> where BovineResult : class
    {
        public BovineRepository(RuralDatabaseContext context) : base(context) { }

        public override BovineResult Get(int id)
        {
            throw new NotImplementedException();
        }

        public override IQueryable<BovineResult> GetAll(object parameters)
        {
            var sql = @"SELECT 
	                        Id = Bovines.Id, 
	                        Number = Bovines.Number, 
	                        Sex, 
	                        Category, 
	                        Years = Age/12,
	                        Months = Age % 12, 
	                        Breed, 
	                        [Status], 
	                        EntryDate, 
	                        OwnerName = Owners.Name, 
	                        OwnerNumber = Owners.Number
                        FROM 
	                        Bovines
                        INNER JOIN
	                        Owners
                        ON 
                            OwnerId = Owners.Id
                        WHERE
                            OwnerId IN @Owners
                        AND 
                            Sex IN @Sex
                        AND
                            [Status] IN @Status
                        ORDER BY OwnerName, EntryDate";

            return base.Query(sql, parameters);
        }

    }
}
