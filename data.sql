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


INSERT INTO vets (name,age,date_of_graduation) 
VALUES ('William Tatcher',45,'2000-04-23'),
('Maisy Smith',26,'2019-01-17'),
('Stephanie Mendez',64,'1981-05-04'),
('Jack Harkness',38,'2008-06-08');

INSERT INTO specializations (vets_id,species_id)
 VALUES (1,1),
 (3,1),
 (3,2),
 (4,2);
INSERT INTO VISITS(animals_id,vets_id,visist_date)
 VALUES (13,3,'2020-07-22'),
 (21,4,'2021-02-02'),
 (22,2,'2020-01-05'),
 (22,2,'2020-03-08'),
 (22,2,'2020-06-14'),
 (4,3,'2021-05-04'),
 (14,4,'2021-02-24'),
 (15,2,'2019-12-21'),
 (15,1,'2020-08-10'),
 (15,02,'2021-04-07'),
 (16,3,'2019-09-29'),
 (17,4,'2020-10-03'),
 (17,4,'2020-11-04'),
 (18,2,'2019-01-24'),
 (18,2,'2019-05-15'),
 (18,2,'2020-02-27'),
 (18,2,'2020-08-03'),
 (19,3,'2020-05-24'),
 (19,1,'2021-01-11');


 