/* Populate database with sample data. */

INSERT INTO animals (name,neutered,escape_attempts,date_of_birth,weight_kg) VALUES ('Agumon',TRUE,0,'2020-07-23',10.23);
INSERT INTO animals (name,neutered,escape_attempts,date_of_birth,weight_kg) VALUES ('Gabumon',TRUE,2,'2018-12-15',8);
INSERT INTO animals (name,neutered,escape_attempts,date_of_birth,weight_kg) VALUES ('Pikachu',FALSE,1,'2021-01-7',15.08);
INSERT INTO animals (name,neutered,escape_attempts,date_of_birth,weight_kg) VALUES ('Devimon',TRUE,5,'2017-05-12'11);
INSERT INTO animals (name,neutered,escape_attempts,date_of_birth,weight_kg) VALUES ('Charmander',FALSE,0,'2020-02-08',-11);
INSERT INTO animals (name,neutered,escape_attempts,date_of_birth,weight_kg) VALUES ('Plantmon',TRUE,2,'2021-12-15',-5.7);
INSERT INTO animals (name,neutered,escape_attempts,date_of_birth,weight_kg) VALUES ('Squirtle',FALSE,3,'1993-04-02',-12.13);
INSERT INTO animals (name,neutered,escape_attempts,date_of_birth,weight_kg) VALUES ('Angemon',TRUE,1,'2005-06-12',-45);
INSERT INTO animals (name,neutered,escape_attempts,date_of_birth,weight_kg) VALUES ('Boarmon',TRUE,7,'2005-06-07',20.4);
INSERT INTO animals (name,neutered,escape_attempts,date_of_birth,weight_kg) VALUES ('Blossom',TRUE,3,'1998-10-13',17);
INSERT INTO animals (name,neutered,escape_attempts,date_of_birth,weight_kg) VALUES ('Ditto',TRUE,4,'2022-05-14',22);

INSERT INTO owners (full_name,age) VALUES ('Sam Smith',34),('Jennifer Orwell',19),('Bob',45),('Melody Pond',77),('Dean Winchester',14),('Jodie Whittake',38);
INSERT INTO species (name) VALUES ('Pokemon'),('Digimon');

UPDATE animals SET owner_id=1 where name='Agumon';
UPDATE animals SET owner_id=2 where name IN ('Gabumon','Pikachu');
UPDATE animals SET owner_id=3 where name IN ('Devimon','Plantmon');
UPDATE animals SET owner_id=4 where name IN ('Charmander','Squirtle','Blossom');
UPDATE animals SET owner_id=5 where name IN ('Angemon','Boarmon');

UPDATE animals SET species_id=2 where name LIKE '%mon';
UPDATE animals SET species_id=1 where name NOT LIKE '%mon';
