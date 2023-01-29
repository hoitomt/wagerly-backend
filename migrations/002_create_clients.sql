-- +goose Up
CREATE TABLE clients (
    id serial PRIMARY KEY,
    user_id integer,
    first_name varchar(40),
    last_name varchar(50),
    email varchar(40),
    created_at timestamp DEFAULT current_timestamp,
    updated_at timestamp DEFAULT current_timestamp
);

-- +goose Down
DROP TABLE clients;
