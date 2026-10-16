# Base relationnelle

## Etape 01

### Plat(__id_plat__,nom,prix)
__piege:__ j'ai choisi INTEGER(entier) pour le rpix
id identifiant unique SERIAL PRIMARY KEY

## Etape 02

### Plat(__id_plat__,nom,#id_categorie,prix)
### Categorie(__id_categorie__,nom)
__piege:__ repetition de nom 
ex:Plat malagasy different de Plat Malagasy

## Etape 03

### Commande(__id_commande__,date_commande)
### Detail_commande(#id_commande,#id_plat,quantite,prix)
__piege:__ la quantite se place dans detail_commande

## Etape 04

### CLient(__id_client__,nom)
### Commande(___id_commande__,date_commande,#id_client)
__piege:__ non,elle est nullable par defaut
utiliser LEFT JOIN pour conserver toutes les commandes 