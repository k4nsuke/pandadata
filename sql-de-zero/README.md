# SQL de zéro · PandaData

Les requêtes de la série « SQL de zéro » de la chaîne YouTube PandaData. Tout se fait dans un onglet de navigateur, sur https://shell.duckdb.org : rien à installer, pas de compte.

## Charger le fichier

Ouvre https://shell.duckdb.org, colle cette ligne, Entrée :

```sql
CREATE TABLE prenoms AS SELECT * FROM read_csv('https://raw.githubusercontent.com/k4nsuke/pandadata/main/donnees/prenoms-1900-2025.csv');
```

Si tu fermes l'onglet, la table s'efface : recolle la ligne, et tout revient.

## Le fichier

[`donnees/prenoms-1900-2025.csv`](../donnees/prenoms-1900-2025.csv) : le fichier national des prénoms de l'INSEE, édition du 16 juillet 2026 (naissances en France de 1900 à 2025, Mayotte comprise depuis 2012), tel que téléchargé sur https://www.insee.fr/fr/statistiques/8595130, seulement dézippé et renommé.

- Colonnes : `sexe` (1 = garçons, 2 = filles), `prenom`, `periode` (l'année), `valeur` (le nombre de naissances), `rang` (la place du prénom parmi ceux du même sexe cette année-là).
- Une ligne = un prénom, pour un sexe, pour une année.
- Les effectifs sont arrondis au multiple de 5 ; les prénoms trop rares ne sont pas diffusés (secret statistique).

**Source : INSEE, Fichier des prénoms, édition 2026, Licence Ouverte** (https://www.etalab.gouv.fr/licence-ouverte-open-licence). Le fichier n'a pas été modifié.

## Les épisodes

Un dossier par épisode, numéroté dans l'ordre des vidéos : un `README.md` (la vidéo, ce qu'on y voit) et `requetes.sql` (toutes les requêtes de la vidéo, dans l'ordre, commentées). Les données sont toutes dans [`donnees/`](../donnees/).

| Épisode | Vidéo | Requêtes |
|---|---|---|
| 1 · Ta première requête (SELECT, FROM, ORDER BY, LIMIT) | sortie le jeudi 19/11/2026 | [episode-01-premiere-requete](episode-01-premiere-requete/) |

## Licence

Les requêtes de ce dépôt sont libres de réutilisation. Le fichier `donnees/prenoms-1900-2025.csv` reste sous la Licence Ouverte de l'INSEE (citer la source : « INSEE, Fichier des prénoms »).
