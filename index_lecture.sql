DROP TABLE IF EXISTS pets;

CREATE TABLE pets(
    id INT UNSIGNED,
    pet_name VARCHAR(30) NOT NULL,
    owner_name VARCHAR(30),
    age INT
);

DESCRIBE pets;

SHOW INDEX from pets;
ALTER TABLE pets
MODIFY COLUMN id