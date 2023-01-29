-- +goose Up
CREATE TABLE transactions (
    id serial PRIMARY KEY,
    client_id integer,
    amount money,
    created_at timestamp DEFAULT current_timestamp,
    updated_at timestamp DEFAULT current_timestamp
);

-- +goose Down
DROP TABLE transactions;
