﻿using Microsoft.EntityFrameworkCore;
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

    }
}
