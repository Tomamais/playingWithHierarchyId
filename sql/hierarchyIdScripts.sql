use HierarchyIdTests

SELECT * FROM [dbo].[SimpleDemo]

SELECT CAST(Level AS nvarchar(100)) AS [Converted Level], *   
FROM SimpleDemo ORDER BY Level;  

select 
    *, 
    level.GetLevels() 
from
    dbo.SimpleDemo

-- Everything below Europe
DECLARE @Europe HIERARCHYID
SELECT @Europe = Level FROM dbo.SimpleDemo WHERE Location = 'Europe'

SELECT * FROM dbo.SimpleDemo WHERE [Level].IsDescendantOf(@Europe) = 1

DECLARE @Spain HIERARCHYID
SELECT @Spain = Level FROM dbo.SimpleDemo WHERE Location = 'Spain'

SELECT @Spain.GetDescendant(NULL, NULL)