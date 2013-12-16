

Steps to create Postgresql database for transactional tables
=============================================================

 1. Install/Initialize PostgreSQL database server v8.0 or later

 2. Log into PostgreSQL database and create an empty database transmart

    $ psql -U postgres

    postgres=# create database transmart;

 3. Import the database transmart dump

     $ psql transmart < transmart_schema_only.dump



