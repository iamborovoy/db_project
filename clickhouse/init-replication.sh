clickhouse-client --user clickhouse --password clickhouse --allow_experimental_database_materialized_postgresql 1 --query "create database if not exists postgres_repl engine = MaterializedPostgreSQL('postgres:5432', 'postgres', 'postgres', 'postgres') settings materialized_postgresql_tables_list = 'users,articles,articles2users,comments';"