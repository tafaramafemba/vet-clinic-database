/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animals WHERE name LIKE '%mon%';
SELECT * FROM animals WHERE date_of_birth BETWEEN 'January 1, 2016' AND 'December 31, 2019';
SELECT NAME FROM animals WHERE neutered = 'true' and escape_attempts < 3;
SELECT DATE_OF_BIRTH FROM animals WHERE NAME IN ('Agumon', 'Pikachu');
SELECT NAME, ESCAPE_ATTEMPTS FROM animals WHERE WEIGHT_KG > 10.5;
SELECT * FROM animals WHERE NEUTERED = 'TRUE';
SELECT * FROM animals WHERE NAME != 'Gabumon';
SELECT * FROM animals WHERE WEIGHT_KG BETWEEN 10.4 AND 17.3;