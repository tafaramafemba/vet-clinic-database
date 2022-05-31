/* Database schema to keep the structure of entire database. */

    CREATE TABLE animals (
	ID int, 
	NAME varchar(100), 
	DATE_OF_BIRTH date, 
	ESCAPE_ATTEMPTS int, 
	NEUTERED boolean, 
	WEIGHT_KG decimal
    );


ALTER TABLE animals ADD SPECIES varchar(50);