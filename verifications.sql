-- Etape 01
SELECT * FROM plat ORDER BY prix DESC;

-- Etape 02
SELECT * FROM plat WHERE id_categorie = 1;
SELECT * FROM plat WHERE id_categorie = 2;
SELECT * FROM plat WHERE id_categorie = 3;
SELECT * FROM plat WHERE id_categorie = 4;
SELECT * FROM plat WHERE id_categorie = 5;

-- Etape 03
SELECT
    id_commande,
    SUM(quantite * prix) AS montant_total
FROM detail_commande
GROUP BY id_commande;

-- Etape 04
SELECT
    co.id_commande,
    co.date_commande,
    COALESCE(cl.nom, 'client de passage') AS nom_client
FROM commande co
LEFT JOIN client cl
    ON co.id_client = cl.id_client;