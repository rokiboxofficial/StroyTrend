#!/bin/bash
psql --username "postgres" -d "stroytrenddb" -f "/StroyTrend/sql-scripts/create-script.sql"
psql --username "postgres" -d "stroytrenddb"  <<-EOSQL
    START TRANSACTION;

    INSERT INTO "Projects" ("Id", "Name", "About")
    VALUES (1, 'Total Chats', 'First table');

    COMMIT;
EOSQL