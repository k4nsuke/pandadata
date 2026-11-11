# PandaData

Les fichiers et les requêtes des vidéos de la chaîne YouTube PandaData : la data moderne expliquée simplement. Tout est gratuit, rien à installer.

## Les séries

| Série | Ce qu'on y apprend | Dossier |
|---|---|---|
| SQL de zéro | SQL dans un onglet de navigateur, sur https://shell.duckdb.org | [sql-de-zero](sql-de-zero/) |

## Comment ce dépôt est rangé

- **Un dossier par série**, puis **un dossier par épisode**, numéroté dans l'ordre des vidéos : `sql-de-zero/episode-01-premiere-requete/`.
- Dans chaque dossier d'épisode : un `README.md` (la vidéo, ce qu'on y voit) et `requetes.sql` (toutes les requêtes de la vidéo, dans l'ordre, commentées).
- **Les cartes PDF** données en description des vidéos sont dans [`cartes/`](cartes/).
- **Toutes les données sont dans [`donnees/`](donnees/)**, avec leur source et leur licence. Les vidéos les chargent directement par leur adresse : rien à télécharger.
- Un fichier publié ne change jamais : une nouvelle version des données ou d'une carte arrive sous un nouveau nom, pour que les résultats de chaque vidéo restent vrais.
