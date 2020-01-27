## Joget


```bash
mkdir joget
wget -O joget/joget-linux-6.0.25.tar.gz \
    https://sourceforge.net/projects/jogetworkflow/files/joget-linux-6.0.25.tar.gz/download
tar -xvf joget/joget-linux-6.0.25.tar.gz -C joget
```

## Sql

```bash
sqlcmd -S localhost -U sa -P abcABC123 -Q "CREATE DATABASE jwdb"
sqlcmd -S localhost -U sa -P abcABC123 -d jwdb -i config/jwdb-mssql-ddl.sql
```

## Docker

```bash
docker-compose run joget /bin/bash
update-alternatives --config java-devel
echo $JAVA_HOME
```