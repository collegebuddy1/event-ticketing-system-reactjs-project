DROP TABLE tickets;
CREATE TABLE tickets(
    ticket_no SERIAL PRIMARY KEY NOT NULL,
    event_id INTEGER NOT NULL REFERENCES events(id) ON DELETE NO ACTION,
    phone VARCHAR(12) NOT NULL,
    paid_by VARCHAR(255) NOT NULL,
    is_paid BOOLEAN DEFAULT false NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);