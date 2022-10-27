/* Database schema to keep the structure of entire database. */
CREATE DATABASE vet_clinic;
CREATE TABLE animals (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    escape_attempts INT NOT NULL,
    neutered BOOLEAN NOT NULL,
    weight_kg DECIMAL NOT NULL,
);
ALTER TABLE animals ADD species VARCHAR(20);

CREATE TABLE IF NOT EXISTs owners(id SERIAL PRIMARY KEY,
full_name VARCHAR(60),
age INT);

CREATE TABLE IF NOT EXISTS species(
    id SERIAL PRIMARY KEY,
name VARCHAR(50)); 

 ALTER TABLE animals ADD species_id INT;
 ALTER TABLE animals ADD CONSTRAINT species_constraint FOREIGN KEY (species_id) references species (id);

 ALTER TABLE animals ADD owner_id INT;
 ALTER TABLE animals ADD CONSTRAINT owner_constraint FOREIGN KEY (owner_id) REFERENCES owners (id);

 