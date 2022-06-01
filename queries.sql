/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animals WHERE name LIKE '%mon%';
SELECT * FROM animals WHERE date_of_birth BETWEEN 'January 1, 2016' AND 'December 31, 2019';
SELECT NAME FROM animals WHERE neutered = 'true' and escape_attempts < 3;
SELECT DATE_OF_BIRTH FROM animals WHERE NAME IN ('Agumon', 'Pikachu');
SELECT NAME, ESCAPE_ATTEMPTS FROM animals WHERE WEIGHT_KG > 10.5;
SELECT * FROM animals WHERE NEUTERED = 'TRUE';
SELECT * FROM animals WHERE NAME != 'Gabumon';
SELECT * FROM animals WHERE WEIGHT_KG BETWEEN 10.4 AND 17.3;

BEGIN
UPDATE animals SET SPECIES = 'unspecified'
ROLLBACK
COMMIT

BEGIN
UPDATE animals SET SPECIES = 'digimon' WHERE NAME LIKE '%mon%'
UPDATE animals SET SPECIES = 'pokemon' WHERE SPECIES IS NULL
COMMIT

BEGIN
DELETE FROM animals;
ROLLBACK

BEGIN
DELETE FROM animals WHERE DATE_OF_BIRTH > 'January 1, 2022'
SAVEPOINT SP1
UPDATE animals SET WEIGHT_KG = WEIGHT_KG * -1
ROLLBACK TO SAVEPOINT SP1
UPDATE animals SET WEIGHT_KG = WEIGHT_KG * -1 WHERE ID IN(5, 6, 7, 8)
COMMIT

SELECT COUNT(*) FROM animals
SELECT COUNT(ESCAPE_ATTEMPTS) FROM animals WHERE ESCAPE_ATTEMPTS = 0
SELECT AVG(WEIGHT_KG) FROM animals
SELECT NEUTERED, MAX(ESCAPE_ATTEMPTS) FROM animals GROUP BY NEUTERED
SELECT SPECIES, MIN(WEIGHT_KG), MAX(WEIGHT_KG) FROM animals GROUP BY SPECIES
SELECT SPECIES, AVG(ESCAPE_ATTEMPTS) FROM animals WHERE DATE_OF_BIRTH BETWEEN 'January 1, 1990' AND 'December 31, 2000' GROUP BY SPECIES

SELECT NAME, FULL_NAME FROM ANIMALS JOIN OWNERS ON ANIMALS.OWNER_ID = OWNERS.ID WHERE FULL_NAME = 'Melody Pond'
SELECT ANIMALS.NAME, SPECIES.NAME FROM ANIMALS JOIN SPECIES ON ANIMALS.SPECIES_ID = SPECIES.ID WHERE SPECIES.NAME = 'Pokemon'
SELECT FULL_NAME, ANIMALS.NAME FROM ANIMALS JOIN OWNERS ON ANIMALS.OWNER_ID = OWNERS.ID
SELECT SPECIES.NAME, COUNT(*) FROM ANIMALS JOIN SPECIES ON ANIMALS.SPECIES_ID = SPECIES.ID GROUP BY SPECIES.NAME;

SELECT * FROM ANIMALS JOIN OWNERS ON ANIMALS.OWNER_ID = OWNERS.ID JOIN SPECIES ON ANIMALS.SPECIES_ID = SPECIES.ID
WHERE SPECIES.NAME = 'Digimon' AND OWNERS.FULL_NAME = 'Jennifer Orwell';

SELECT * FROM ANIMALS JOIN OWNERS ON ANIMALS.OWNER_ID = OWNERS.ID
WHERE OWNERS.FULL_NAME = 'Dean Winchester' AND ANIMALS.ESCAPE_ATTEMPTS = 0;

SELECT OWNERS.FULL_NAME, COUNT(OWNERS.FULL_NAME) FROM ANIMALS JOIN owners ON ANIMALS.OWNER_ID = OWNERS.ID
GROUP BY OWNERS.FULL_NAME ORDER BY COUNT(OWNERS.FULL_NAME) DESC;