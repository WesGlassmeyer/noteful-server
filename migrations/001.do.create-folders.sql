CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE TABLE noteful_folders (
    id uuid DEFAULT uuid_generate_v4 () UNIQUE,
    name TEXT NOT NULL
);