/* Populate database with sample data. */

INSERT into animals VALUES (1, 'Agumon', 'February 3, 2020', 0, 'true', 10.23);
INSERT into animals VALUES (2, 'Gabumon', 'November 15, 2018', 2, 'true', 8);
INSERT into animals VALUES (3, 'Pikachu', 'January 7, 2021', 1, 'false', 15.04);
INSERT into animals VALUES (4, 'Devimon', ' May 12, 2017', 5, 'true', 11);
INSERT into animals VALUES (5, 'Charmander', 'February 8, 2020', 0, 'false', -11);
INSERT into animals VALUES (6, 'Plantmon', 'November 15, 2021', 2, 'true', -5.7);
INSERT into animals VALUES (7, 'Squirtle', 'April 2, 1993', 3, 'false', -2.13);
INSERT into animals VALUES (8, 'Angemon', 'June 12, 2005', 1, 'true', -45);
INSERT into animals VALUES (9, 'Boarmon', 'June 7, 2005', 7, 'true', 20.4);
INSERT into animals VALUES (10, 'Blossom', 'October 13, 1998', 3, 'true', 17);
INSERT into animals VALUES (11, 'Ditto', 'May 14, 2022', 4, 'true', 22);

INSERT INTO OWNERS(FULL_NAME, AGE) VALUES('Sam Smith', 34);
INSERT INTO OWNERS(FULL_NAME, AGE) VALUES('Jennifer Orwell', 19);
INSERT INTO OWNERS(FULL_NAME, AGE) VALUES('Bob', 45);
INSERT INTO OWNERS(FULL_NAME, AGE) VALUES('Melody Pond', 77);
INSERT INTO OWNERS(FULL_NAME, AGE) VALUES('Dean Winchester', 14);
INSERT INTO OWNERS(FULL_NAME, AGE) VALUES('Jodie Whittaker', 38);

INSERT INTO SPECIES(NAME) VALUES('Pokemon');
INSERT INTO SPECIES(NAME) VALUES('Digimon');

UPDATE ANIMALS SET SPECIES_ID = (SELECT ID FROM SPECIES WHERE NAME = 'Digimon')
WHERE NAME LIKE '%mon';

UPDATE ANIMALS SET SPECIES_ID = (SELECT ID FROM SPECIES WHERE NAME = 'Pokemon')
WHERE SPECIES_ID IS NULL

UPDATE ANIMALS SET OWNER_ID = (SELECT ID FROM OWNERS WHERE FULL_NAME = 'Sam Smith')
WHERE NAME = 'Agumon'
UPDATE ANIMALS SET OWNER_ID = (SELECT ID FROM OWNERS WHERE FULL_NAME = 'Jennifer Orwell')
WHERE NAME IN ('Gabumon', 'Pikachu')
UPDATE ANIMALS SET OWNER_ID = (SELECT ID FROM OWNERS WHERE FULL_NAME = 'Bob')
WHERE NAME IN ('Devimon', 'Plantmon')
UPDATE ANIMALS SET OWNER_ID = (SELECT ID FROM OWNERS WHERE FULL_NAME = 'Melody Pond')
WHERE NAME IN ('Charmander', 'Squirtle', 'Blossom')
UPDATE ANIMALS SET OWNER_ID = (SELECT ID FROM OWNERS WHERE FULL_NAME = 'Dean Winchester')
WHERE NAME IN ('Angemon', 'Boarmon')

INSERT INTO VETS (NAME, AGE, DATE_OF_GRADUATION) VALUES ('William Tatcher', 45, 'April 23, 2000')
INSERT INTO VETS (NAME, AGE, DATE_OF_GRADUATION) VALUES ('Maisy Smith', 26, 'January 17, 2019')
INSERT INTO VETS (NAME, AGE, DATE_OF_GRADUATION) VALUES ('Stephanie Mendez', 64, 'May 4, 1981')
INSERT INTO VETS (NAME, AGE, DATE_OF_GRADUATION) VALUES ('Jack Harkness', 38, 'June 8, 2008')

INSERT INTO SPECIALIZATIONS (SPECIES_ID, VET_ID) VALUES ((SELECT ID FROM SPECIES WHERE NAME = 'Pokemon'), 
														(SELECT ID FROM VETS WHERE NAME = 'William Tatcher')),
														((SELECT ID FROM SPECIES WHERE NAME = 'Digimon'), 
														(SELECT ID FROM VETS WHERE NAME = 'Stephanie Mendez')),
														((SELECT ID FROM SPECIES WHERE NAME = 'Pokemon'), 
														(SELECT ID FROM VETS WHERE NAME = 'Stephanie Mendez')),
														((SELECT ID FROM SPECIES WHERE NAME = 'Digimon'), 
														(SELECT ID FROM VETS WHERE NAME = 'Jack Harkness'))

INSERT INTO VISITS (ANIMAL_ID, VET_ID, DATE_OF_VISIT) VALUES ((SELECT ID FROM ANIMALS WHERE NAME = 'Agumon'),
															  (SELECT ID FROM VETS WHERE NAME = 'William Tatcher')
															  ,'May 24, 2020'),
															  ((SELECT ID FROM ANIMALS WHERE NAME = 'Agumon'),
															  (SELECT ID FROM VETS WHERE NAME = 'Stephanie Mendez')
															  ,'July 22, 2020'),
															  ((SELECT ID FROM ANIMALS WHERE NAME = 'Gabumon'),
															  (SELECT ID FROM VETS WHERE NAME = 'Jack Harkness')
															  ,'February 2, 2021'),
															  ((SELECT ID FROM ANIMALS WHERE NAME = 'Pikachu'),
															  (SELECT ID FROM VETS WHERE NAME = 'Maisy Smith')
															  ,'January 5, 2020'),
															  ((SELECT ID FROM ANIMALS WHERE NAME = 'Pikachu'),
															  (SELECT ID FROM VETS WHERE NAME = 'Maisy Smith')
															  ,'March 8, 2020'),
															  ((SELECT ID FROM ANIMALS WHERE NAME = 'Devimon'),
															  (SELECT ID FROM VETS WHERE NAME = 'Stephanie Mendez')
															  ,'May 4, 2021'),
															  ((SELECT ID FROM ANIMALS WHERE NAME = 'Charmander'),
															  (SELECT ID FROM VETS WHERE NAME = 'Jack Harkness')
															  ,'February 24, 2021'),
															  ((SELECT ID FROM ANIMALS WHERE NAME = 'Plantmon'),
															  (SELECT ID FROM VETS WHERE NAME = 'Maisy Smith')
															  ,'December 21, 2019'),
															  ((SELECT ID FROM ANIMALS WHERE NAME = 'Plantmon'),
															  (SELECT ID FROM VETS WHERE NAME = 'William Tatcher')
															  ,'August 10, 2020'),
															  ((SELECT ID FROM ANIMALS WHERE NAME = 'Plantmon'),
															  (SELECT ID FROM VETS WHERE NAME = 'Maisy Smith')
															  ,'April 7, 2021'),
															  ((SELECT ID FROM ANIMALS WHERE NAME = 'Squirtle'),
															  (SELECT ID FROM VETS WHERE NAME = 'Stephanie Mendez')
															  ,'September 29, 2019'),
															  ((SELECT ID FROM ANIMALS WHERE NAME = 'Angemon'),
															  (SELECT ID FROM VETS WHERE NAME = 'Jack Harkness')
															  ,'October 3, 2020'),
															  ((SELECT ID FROM ANIMALS WHERE NAME = 'Angemon'),
															  (SELECT ID FROM VETS WHERE NAME = 'Jack Harkness')
															  ,'November 4, 2020'),
															  ((SELECT ID FROM ANIMALS WHERE NAME = 'Boarmon'),
															  (SELECT ID FROM VETS WHERE NAME = 'Maisy Smith')
															  ,'January 24, 2019'),
															  ((SELECT ID FROM ANIMALS WHERE NAME = 'Boarmon'),
															  (SELECT ID FROM VETS WHERE NAME = 'Maisy Smith')
															  ,'May 15, 2019'),
															  ((SELECT ID FROM ANIMALS WHERE NAME = 'Boarmon'),
															  (SELECT ID FROM VETS WHERE NAME = 'Maisy Smith')
															  ,'February 27, 2020'),
															  ((SELECT ID FROM ANIMALS WHERE NAME = 'Boarmon'),
															  (SELECT ID FROM VETS WHERE NAME = 'Maisy Smith')
															  ,'August 3, 2020'),
															  ((SELECT ID FROM ANIMALS WHERE NAME = 'Blossom'),
															  (SELECT ID FROM VETS WHERE NAME = 'Stephanie Mendez')
															  ,'May 24, 2020'),
															  ((SELECT ID FROM ANIMALS WHERE NAME = 'Blossom'),
															  (SELECT ID FROM VETS WHERE NAME = 'William Tatcher')
															  ,'January 11, 2021')

INSERT INTO visits (animal_id, vet_id, date_of_visit) SELECT * FROM (SELECT id FROM animals) animal_ids, (SELECT id FROM vets) vets_ids, generate_series('1980-01-01'::timestamp, '2021-01-01', '4 hours') visit_timestamp;
insert into owners (full_name, email) select 'Owner ' || generate_series(1,2500000), 'owner_' || generate_series(1,2500000) || '@mail.com';