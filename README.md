# Wagerly API
The Wagerly API written in Go

## Setup

Create .env file
1. cp `.env.example .env`
1. Fill in the variables in .env

## Development

1. Start the containers

    ```
    docker-compose up
    ```

1. Run the development container

    ```
    ./run.sh
    ```

### Initial Setup

This is one time only database setup. After starting the container run the following commands

```
./scripts/create_database.sh
./scripts/create_user.sql
```

### Apply the migrations

1. Run migrations

```
goose -dir migrations up
```

### Access the database from the application container

Enter the password at the prompt

```
 psql -h db -U $DB_USER -d $DB_NAME -W
Password:
```