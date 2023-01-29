-- +goose Up
CREATE TABLE ticket_line_items (
    id serial PRIMARY KEY,
    ticket_id integer,
    away_team varchar(50),
    away_score integer,
    home_team varchar(50),
    home_score integer,
    line_item_date date,
    line_item_spread varchar(100),
    description varchar(200),
    created_at timestamp DEFAULT current_timestamp,
    updated_at timestamp DEFAULT current_timestamp
);

-- +goose Down
DROP TABLE ticket_line_items;
