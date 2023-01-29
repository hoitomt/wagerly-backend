-- +goose Up
CREATE TABLE tags (
    id serial PRIMARY KEY,
    name varchar(100),
    amount_wagered money,
    created_at timestamp DEFAULT current_timestamp,
    updated_at timestamp DEFAULT current_timestamp
);

-- +goose Down
DROP TABLE tags;