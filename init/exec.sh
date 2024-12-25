psql -U "$POSTGRES_USER" -d "$POSTGRES_DB" -a -f /create_scripts/DDL_craft_market_source_1.sql
psql -U "$POSTGRES_USER" -d "$POSTGRES_DB" -a -f /create_scripts/DDL_craft_market_source_2.sql
psql -U "$POSTGRES_USER" -d "$POSTGRES_DB" -a -f /create_scripts/DDL_craft_market_source_3.sql
psql -U "$POSTGRES_USER" -d "$POSTGRES_DB" -a -f /create_scripts/fill_sources.sql > /dev/null
psql -U "$POSTGRES_USER" -d "$POSTGRES_DB" -a -f /dwh_scripts/DDL_craft_market_dwh.sql
psql -U "$POSTGRES_USER" -d "$POSTGRES_DB" -a -f /dwh_scripts/DDL_craft_market_datamart_increment.sql
psql -U "$POSTGRES_USER" -d "$POSTGRES_DB" -a -f /dwh_scripts/fill_dwh.sql 