/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animals WHERE name LIKE '%mon';
SELECT name FROM animals WHERE date_of_birth BETWEEN '2016-01-01' and '2019-01-01';
SELECT name FROM animals WHERE neutered AND escape_attempts<3;
SELECT date_of_birth FROM animals WHERE name IN ('Agumon','Pikachu');
SELECT date_of_birth, name FROM animals WHERE weight_kg > 10.5;
SELECT * FROM animals WHERE neutered;
SELECT * FROM animals WHERE name NOT IN ('Gabumon');
SELECT * FROM animals WHERE weight_kg BETWEEN 10.4 AND 17.3;

BEGIN;
UPDATE animals SET species='unspecified';
select * from animals;
ROLLBACK;
select * from animals;

BEGIN;
UPDATE animals SET species='digimon' WHERE name LIKE '%mon';
UPDATE animals SET species='pokemon' WHERE species='';
COMMIT;

BEGIN;
DELETE FROM animals;
SELECT * FROM animals;
ROLLBACK;
SELECT * FROM animals;

BEGIN;
DELETE from animals where date_of_birth>'2022-01-01';
SAVEPOINT sp1;
UPDATE animals SET weight_kg=weight_kg*-1;
ROLLBACK to sp1;
UPDATE animals SET weight_kg=weight_kg*-1 WHERE weight_kg<0;
COMMIT;

SELECT count(*) from animals;
 SELECT count(*) from animals where escape_attempts=0;
 SELECT AVG(weight_kg) from animals;
 SELECT MAX(escape_attempts),neutered from animals GROUP BY neutered;
 SELECT MIN(weight_kg),MAX(weight_kg),species from animals GROUP BY species;
 SELECT AVG(escape_attempts),species from animals WHERE date_of_birth BETWEEN '1990-01-01' and '2000-01-01' GROUP BY species;

SELECT a.name,a.date_of_birth as birth_date,o.full_name,o.age from animals a JOIN owners o ON a.owner_id=o.id where o.id=4;
SELECT a.name,a.date_of_birth as birth_date,s.name from animals a JOIN species s ON a.species_id=s.id where s.name='Pokemon' ;
SELECT count(a.id),s.name from animals a JOIN species s ON a.species_id=s.id GROUP BY(s.id);
SELECT a.name, s.name, o.full_name from animals a JOIN owners o ON a.owner_id=o.id JOIN species s ON a.species_id=s.id where s.name='Digimon' and o.full_name='Jennifer Orwell';
select a.name,o.full_name from animals a LEFT JOIN owners o ON a.owner_id=o.id where a.escape_attempts=0 and o.id=5;
SELECT count(a.owner_id) as most_owned,o.full_name from owners o LEFT JOIN animals a ON a.owner_id=o.id GROUP BY (o.id);