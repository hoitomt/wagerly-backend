#! /bin/ash

psql -h db -U postgres -d ${DB_NAME} -c "Create user ${DB_USER} with encrypted password '${DB_PASSWORD}';"

psql -h db -U postgres -d ${DB_NAME} -c "ALTER DATABASE ${DB_NAME} OWNER TO ${DB_USER}"

psql -h db -U postgres -d ${DB_NAME} -c "ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON TABLES TO ${DB_USER};"
psql -h db -U postgres -d ${DB_NAME} -c "ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON SEQUENCES TO ${DB_USER};"
psql -h db -U postgres -d ${DB_NAME} -c "ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON FUNCTIONS TO ${DB_USER};"
