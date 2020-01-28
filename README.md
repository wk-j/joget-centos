## 1. Download Joget

*Community*

```bash
mkdir joget
wget -O joget/joget-linux-6.0.25.tar.gz \
    https://sourceforge.net/projects/jogetworkflow/files/joget-linux-6.0.25.tar.gz/download
tar -xvf joget/joget-linux-6.0.25.tar.gz -C joget
```

*Enterprise*

```bash
wget -O joget/joget-enterprise-linux-6.0.25.tar.gz \
     https://www.joget.org/downloads/enterprise/joget-enterprise-linux-6.0.25.tar.gz
tar -xvf joget/joget-enterprise-linux-6.0.25.tar.gz -C joget
```

## 2. Download Glowroot

```bash
mkdir glowroot
wget -P glowroot https://github.com/glowroot/glowroot/releases/download/v0.13.5/glowroot-0.13.5-dist.zip
unzip glowroot/glowroot-0.13.5-dist.zip -d glowroot
```

## 3. Start SQL Server

```bash
docker-compose up
```

## 4. Create Database

```bash
sqlcmd -S localhost -U sa -P abcABC123 -Q "CREATE DATABASE jwdb"
sqlcmd -S localhost -U sa -P abcABC123 -d jwdb -i config/jwdb-mssql-ddl.sql
sqlcmd -S localhost -U sa -P abcABC123 -d jwdb -i config/view-employee.sql
sqlcmd -S localhost -U sa -P abcABC123 -d jwdb -i config/load-csv.sql
sqlcmd -S localhost -U sa -P abcABC123 -d jwdb -i config/app_fd_tip_budget_type_202001281628.sql

sqlcmd -S localhost -U sa -P abcABC123 -d jwdb -i sql/max.sql
sqlcmd -S localhost -U sa -P abcABC123 -d jwdb -i sql/lock.sql
sqlcmd -S localhost -U sa -P abcABC123 -d jwdb -i sql/c.sql
sqlcmd -S localhost -U sa -P abcABC123 -d jwdb -i sql/collation.sql
sqlcmd -S localhost -U sa -P abcABC123 -d jwdb -i sql/change-collation.sql
```

### 5. Start Joget

```bash
docker-compose up joget
```

## 6. Monitor

```bash
open http://localhost:4000
lsof
netstat
```

## Connection

```bash
jdbc:sqlserver://sql-server:1433;DatabaseName=jwdb;SelectMethod=cursor
```

## Resource

- https://geekflare.com/enable-jmx-tomcat-to-monitor-administer
- https://www.jamasoftware.com/blog/monitoring-java-applications
- https://www.tecmint.com/command-line-tools-to-monitor-linux-performance