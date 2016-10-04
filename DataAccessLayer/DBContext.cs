using Domain;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
  public  class DBContext: DbContext
    {
        public DBContext() : base("name=dbconnection")
        {
           Database.SetInitializer(new MigrateDatabaseToLatestVersion<DBContext, Migrations.Configuration>("dbconnection"));

        }

        public DbSet<UnitPrice> UnitPrices { get; set; }
        public DbSet<Customer> Customers { get; set; }
        public DbSet<Item> Items { get; set; }
        public DbSet<TransHead> TransHeads { get; set; }
        public DbSet<TransDetails> TransDetails { get; set; }

    }
}
