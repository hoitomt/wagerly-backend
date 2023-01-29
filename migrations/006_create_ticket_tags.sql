-- +goose Up
CREATE TABLE ticket_tags (
    id serial PRIMARY KEY,
    ticket_id integer,
    tag_id integer,
    amount money,
    client_id integer,
    created_at timestamp DEFAULT current_timestamp,
    updated_at timestamp DEFAULT current_timestamp
);

-- +goose Down
DROP TABLE ticket_tags;