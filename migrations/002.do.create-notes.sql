CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE TABLE noteful_notes (
    id uuid DEFAULT uuid_generate_v4 (),
    name TEXT NOT NULL,
    modified TIMESTAMPTZ NOT NULL DEFAULT now(),
    folderid uuid REFERENCES noteful_folders(id) ON DELETE CASCADE,
    content TEXT NOT NULL
);