-- make sure no one else is using database

ALTER DATABASE jwdb
SET SINGLE_USER WITH
ROLLBACK IMMEDIATE -- change collation to Modern_Spanish_CI_AI_WS

ALTER DATABASE jwdb COLLATE Thai_CI_AI -- allow users back into the database

ALTER DATABASE jwdb
SET MULTI_USER