-- SQLite
CREATE TABLE IF NOT EXISTS recipes (
   title VARCHAR(150) NOT NULL,
   slug VARCHAR(50) NOT NULL,
   duration SMALLINT,
   online BOOLEAN,
   created_at DATETIME
);