PRAGMA foreign_keys = ON;

-- Actors table
CREATE TABLE IF NOT EXISTS actors (
    actor_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    email TEXT UNIQUE,
    phone TEXT,
    address TEXT
);

-- Costumes table
CREATE TABLE IF NOT EXISTS costumes (
    costume_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    era TEXT NOT NULL,
    category TEXT,
    size TEXT,
    description TEXT,
    price_per_day REAL NOT NULL,
    availability TEXT DEFAULT 'Available'
);

-- Hires table
CREATE TABLE IF NOT EXISTS hires (
    hire_id INTEGER PRIMARY KEY AUTOINCREMENT,
    actor_id INTEGER NOT NULL,
    costume_id INTEGER NOT NULL,
    hire_date TEXT NOT NULL,
    return_date TEXT,
    status TEXT DEFAULT 'Active',

    FOREIGN KEY (actor_id) REFERENCES actors(actor_id),
    FOREIGN KEY (costume_id) REFERENCES costumes(costume_id)
);