# carmarketplace-db

Car Marketplace DB

This is the car marketplace database repo. It uses liquibase to manage the database schema changes.

## Maven profiles
- There are multiple databases to manage within carmarketplace. 
- To generate changelogs specific to a database pass the maven profile for that db.
  - carinfodb
  - carlistingdb
  - userdb

## Generating a changelog
- mvn liquibase:generateChangeLog -Puserdb -Dliquibase.outputChangeLogFile=src/main/resources/db/changelog/userdb/sql/db.changelog-1.0.mysql.sql
- mvn liquibase:generateChangeLog -Pcarinfodb -Dliquibase.outputChangeLogFile=src/main/resources/db/changelog/carinfodb/sql/db.changelog-1.0.mysql.sql
- mvn liquibase:generateChangeLog -Pcarlistingdb -Dliquibase.outputChangeLogFile=src/main/resources/db/changelog/carlistingdb/sql/db.changelog-1.0.mysql.sql

## Generating changelog on an empty target database
- mvn liquibase:diff -Puserdb -Dliquibase.diffChangeLogFile=src/main/resources/db/changelog/userdb/sql/db.changelog-1.0.mysql.sql

## Applying changes to target directly via liquibase
- mvn liquibase:update -Puserdb

## Generating a migration script and applying changes manually
- mvn liquibase:updateSQL -Puserdb