CREATE TYPE user_role AS ENUM ('admin', 'user');

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL,
    role user_role NOT NULL DEFAULT 'user'
);

CREATE TABLE entity (
    id SERIAL PRIMARY KEY,
    fname TEXT NOT NULL,
    mname TEXT,
    lname TEXT NOT NULL,
    email TEXT,
    phone VARCHAR(15),
    address_id INTEGER,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);