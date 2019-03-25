using Microsoft.SqlServer.Types;

namespace webAppWithSqlHierarchy.Models
{
    public class SimpleDemo
    {
        public SqlHierarchyId Level { get; set; }

        public string Location { get; set; }

        public string LocationType { get; set; }
    }
}