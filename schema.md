# Base relationnelle

## Etape 01

### Plat(__id_plat__,nom,prix)
j'ai choisi INTEGER(entier) pour le rpix
id identifiant unique SERIAL PRIMARY KEY

## Etape 02

### Plat(__id_plat__,nom,#id_categorie,prix)
### Categorie(__id_categorie__,nom)
__piege__:repetition de nom 
ex:Plat malagasy different de Plat Malagasy