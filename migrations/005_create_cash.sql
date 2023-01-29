-- +goose Up
CREATE TABLE cash (
    id serial PRIMARY KEY,
    tag_id integer,
    amount money,
    created_at timestamp DEFAULT current_timestamp,
    updated_at timestamp DEFAULT current_timestamp
);

-- +goose Down
DROP TABLE cash;
