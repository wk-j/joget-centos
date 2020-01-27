## 1. Download Joget

```bash
mkdir joget
wget -O joget/joget-linux-6.0.25.tar.gz \
    https://sourceforge.net/projects/jogetworkflow/files/joget-linux-6.0.25.tar.gz/download
tar -xvf joget/joget-linux-6.0.25.tar.gz -C joget
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
sqlcmd -S localhost -U sa -P abcABC123 -d jwdb -i config/jwdb-mssql-ddl.sql
```

### 5. Start Joget

```bash
docker-compose up joget
```

## 6. Monitor

```bash
jconsole localhost:9999
open http://localhost:4000
```

## Resource

- https://geekflare.com/enable-jmx-tomcat-to-monitor-administer
- https://www.jamasoftware.com/blog/monitoring-java-applications