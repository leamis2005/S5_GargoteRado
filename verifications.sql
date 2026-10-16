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
