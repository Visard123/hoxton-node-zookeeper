CREATE TABLE animals (
id INTEGER,
species TEXT,
name TEXT,
age INTEGER,
fed TEXT,
fav_food TEXT,
PRIMARY KEY ("id")
);


-- Populate table
INSERT INTO animals (species, name,age,fed,fav_food) VALUES ("felidae", "bob", 21, "yes","meat");
INSERT INTO animals (species, name,age,fed,fav_food) VALUES ("felidae", "floresuta", 7, "no","fish");
INSERT INTO animals (species, name,age,fed,fav_food) VALUES ("felidae", "agim", 7, "yes","chicken");
INSERT INTO animals (species, name,age,fed,fav_food) VALUES ("canidae", "shpresa", 9, "no","meat");
INSERT INTO animals (species, name,age,fed,fav_food) VALUES ("canidae", "kujtim", 14, "yes","beef");
INSERT INTO animals (species, name,age,fed,fav_food) VALUES ("butterfly", "lule", 3, "yes","flower");
INSERT INTO animals (species, name,age,fed,fav_food) VALUES ("butterfly", "samil", 15, "no","flower");
INSERT INTO animals (species, name,age,fed,fav_food) VALUES ("birds", "pipy", 5, "yes","corn");
INSERT INTO animals (species, name,age,fed,fav_food) VALUES ("birds", "gugu", 5, "no","seeds");
INSERT INTO animals (species, name,age,fed,fav_food) VALUES ("bee", "gue", 6, "yes","nectar");

-- Update fields
UPDATE animals SET age=21
WHERE id=1;

UPDATE animals SET species="butterfly", name="lule" ,age=3,fed="yes",fav_food="flower"
WHERE id=3;

UPDATE animals SET fed=yes
WHERE id=4;

UPDATE animals SET fav_food="chcken"
WHERE id=5;

-- Delete animal
DELETE FROM animals WHERE id=2;
DELETE FROM animals WHERE id=10;
-- Delete column
ALTER TABLE animals DROP COLUMN fav_food;

-- Add origin

ALTER TABLE animals ADD origin  TEXT;
UPDATE animals SET origin="zimbabwe" WHERE id=1;

UPDATE animals SET origin="Tunisia" WHERE id=4;

UPDATE animals SET origin="China" WHERE id=9;
-- Add cities
ALTER TABLE animals ADD origin  TEXT;
UPDATE animals SET city="london" WHERE id=3;

UPDATE animals SET city="kukes" WHERE id=6;

UPDATE animals SET city="vlora" WHERE id=8;
-- Feed animals with 1 command

UPDATE animals SET fed="yes";