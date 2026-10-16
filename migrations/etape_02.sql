ALTER TABLE plat ADD COLUMN id_categorie INT;

CREATE TABLE categorie(
    id_categorie SERIAL PRIMARY KEY,
    nom VARCHAR(100) NOT NULL
);

ALTER TABLE plat ADD CONSTRAINT plat_categorie
FOREIGN KEY (id_categorie)
REFERENCES categorie(id_categorie);

INSERT INTO categorie(nom)
VALUES 
('Plat malagasy'),
('Plat chinois'),
('Soupe'),
('Dessert et gouter'),
('Boisson');

UPDATE plat
SET id_categorie = 1
WHERE nom = 'Romazava';

UPDATE plat
SET id_categorie = 1
WHERE nom = 'Ravitoto sy henakisoa';

UPDATE plat
SET id_categorie = 1
WHERE nom = 'Akoho sy voanio';

UPDATE plat
SET id_categorie = 2
WHERE nom = 'Min sao';

UPDATE plat
SET id_categorie = 3
WHERE nom = 'Soupe chinoise';

UPDATE plat
SET id_categorie = 4
WHERE nom = 'Mofo gasy';

UPDATE plat
SET id_categorie = 5
WHERE nom = 'Ranon''ampango';