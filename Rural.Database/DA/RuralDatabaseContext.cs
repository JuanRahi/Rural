using Microsoft.EntityFrameworkCore;
using Rural.Database.Model;
using System;
using System.Collections.Generic;
using System.Text;

namespace Rural.Database.DA
{
    public class RuralDatabaseContext: DbContext
    {
        public RuralDatabaseContext(DbContextOptions<RuralDatabaseContext> options)
            : base(options) { }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
        }

        public DbSet<Bovine> Bovines { get; set; }
        public DbSet<Owner> Owners { get; set; }
        public DbSet<Location> Locations { get; set; }
        public DbSet<Deal> Deals { get; set; }
        public DbSet<DealItem> DealItems { get; set; }
        public DbSet<BovineDeal> BovineDeals { get; set; }
        public DbSet<Control> Controls { get; set; }
        public DbSet<BovineControl> BovineControls { get; set; }
        public DbSet<Paddock> Paddocks { get; set; }
    }
}
