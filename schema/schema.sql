USE music_shop_db;

CREATE TABLE inventory (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  image VARCHAR(100) NOT NULL,
  description TEXT,
  price FLOAT(10,2) NOT NULL DEFAULT 0,
  quantity INT NOT NULL DEFAULT 0
);

-- Create the users table with
CREATE TABLE users ( 
  -- id that's primary key integer auto incrementing
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  -- username that's a 100 char varchar and unique
  username INT NOT NULL VARCHAR(100) NOT NULL unique,
  -- password that's a 200 char varchar
  password INT NOT NULL VARCHAR(200)
)

CREATE TABLE cart (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  inventory_id INT NOT NULL,
-- add a user_id column that's an int
  quantity INT NOT NULL DEFAULT 1,
  FOREIGN KEY (inventory_id)
    REFERENCES inventory (id)
    ON DELETE CASCADE
-- add a foreign key constraint to user_id just like inventory_id
);
