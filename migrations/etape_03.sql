CREATE TABLE commande (
    id_commande SERIAL PRIMARY KEY,
    date_commande DATE DEFAULT CURRENT_DATE
);

CREATE TABLE detail_commande (
    id_commande INT,
    id_plat INT,
    quantite INT,
    prix INT,
    PRIMARY KEY (id_commande, id_plat),
    FOREIGN KEY (id_commande) REFERENCES commande(id_commande),
    FOREIGN KEY (id_plat) REFERENCES plat(id_plat)
);

INSERT INTO commande DEFAULT VALUES; 

INSERT INTO detail_commande
VALUES
    (1, 1, 2, 15000),
    (1, 2, 3, 5000);