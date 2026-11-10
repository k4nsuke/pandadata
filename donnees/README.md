# Les données

Les fichiers que les vidéos chargent par leur adresse. Un fichier publié ici ne change jamais : une nouvelle édition arrive sous un nouveau nom.

| Fichier | Ce qu'il contient | Source | Licence |
|---|---|---|---|
| [`prenoms-1900-2025.csv`](prenoms-1900-2025.csv) | Les prénoms donnés en France de 1900 à 2025 (Mayotte comprise depuis 2012) : `sexe` (1 = garçons, 2 = filles), `prenom`, `periode` (l'année), `valeur` (le nombre de naissances), `rang`. 724 645 lignes, séparateur `;`. | INSEE, Fichier des prénoms, édition 2026, fichier national, https://www.insee.fr/fr/statistiques/8595130 (seulement dézippé et renommé) | Licence Ouverte 2.0 : citer « INSEE, Fichier des prénoms » |

Pour le charger dans https://shell.duckdb.org :

```sql
CREATE TABLE prenoms AS SELECT * FROM read_csv('https://raw.githubusercontent.com/k4nsuke/pandadata/main/donnees/prenoms-1900-2025.csv');
```
