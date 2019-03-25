using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;

namespace webAppWithSqlHierarchy.DbContexts
{
    public class HierarchyIdTestsDbContext : DbContext
    {
        public HierarchyIdTestsDbContext (DbContextOptions<HierarchyIdTestsDbContext> options)
            : base(options)
        {
        }

        public DbSet<webAppWithSqlHierarchy.Models.SimpleDemo> Movie { get; set; }
    }
}