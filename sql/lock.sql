SELECT COUNT(*)
FROM master.dbo.syslockinfo
WHERE DB_NAME(rsc_dbid) = 'jwdb'