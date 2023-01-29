-- +goose Up
CREATE TABLE tickets (
    id serial PRIMARY KEY,
    sb_bet_id varchar(10),
    wager_date date,
    amount_wagered money,
    amount_to_win money,
    amount_paid money,
    outcome varchar(10),
    created_at timestamp DEFAULT current_timestamp,
    updated_at timestamp DEFAULT current_timestamp
);

-- +goose Down
DROP TABLE tickets;
