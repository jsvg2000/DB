-- Roles Table
CREATE TABLE roles (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) UNIQUE NOT NULL
);

-- Users Table
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password TEXT NOT NULL,
    role_id INTEGER NOT NULL REFERENCES roles(id)
);

-- States for Merchant Table
CREATE TABLE merchant_states (
    id SERIAL PRIMARY KEY,
    name VARCHAR(20) UNIQUE NOT NULL
);

-- Merchants Table
CREATE TABLE merchants (
    id SERIAL PRIMARY KEY,
    business_name VARCHAR(150) NOT NULL,
    municipality VARCHAR(100) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(100),
    registration_date DATE NOT NULL DEFAULT CURRENT_DATE,
    state_id INTEGER NOT NULL REFERENCES merchant_states(id),
    last_updated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_by_user_id INTEGER REFERENCES users(id)
);

-- Establishments Table
CREATE TABLE establishments (
    id SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    revenue NUMERIC(15,2) NOT NULL,
    number_of_employees INTEGER NOT NULL,
    merchant_id INTEGER NOT NULL REFERENCES merchants(id),
    last_updated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_by_user_id INTEGER REFERENCES users(id)
);

