#!/bin/bash
CONTAINER_NAME="wagerly-backend-wagerly-backend-1"

set -x
docker exec -it \
-e GOOSE_DRIVER \
-e GOOSE_DBSTRING \
-e POSTGRES_USER \
-e POSTGRES_PASSWORD \
-e PGPASSWORD \
-e DB_NAME \
-e DB_USER \
-e DB_PASSWORD \
"$CONTAINER_NAME" ash