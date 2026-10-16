CREATE TABLE client (
    id_client SERIAL PRIMARY KEY,
    nom VARCHAR(100)
);

ALTER TABLE commande
ADD COLUMN id_client INT REFERENCES client(id_client);