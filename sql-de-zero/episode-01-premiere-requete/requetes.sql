-- SQL de zéro · épisode 1 · Ta première requête
-- Toutes les requêtes de la vidéo, dans l'ordre. À coller dans https://shell.duckdb.org
-- Fichier : INSEE, Fichier des prénoms, édition 2026, Licence Ouverte

-- Ta toute première requête : la base répond toujours par une table
SELECT 1 + 1;

-- La ligne de chargement (expliquée à la fin de la vidéo)
CREATE TABLE prenoms AS SELECT * FROM read_csv('https://raw.githubusercontent.com/k4nsuke/pandadata/main/donnees/prenoms-1900-2025.csv');

-- Quelles colonnes ?
DESCRIBE prenoms;

-- Montre-moi des prénoms, cinq lignes
SELECT prenom
FROM prenoms
LIMIT 5;

-- Plusieurs colonnes : une virgule entre chaque
SELECT prenom, periode, valeur
FROM prenoms
LIMIT 5;

-- Trier : par défaut, du plus petit au plus grand
SELECT prenom, periode, valeur
FROM prenoms
ORDER BY valeur
LIMIT 5;

-- Du plus grand au plus petit : JEAN, 1946, 53 380
SELECT prenom, periode, valeur
FROM prenoms
ORDER BY valeur DESC
LIMIT 5;

-- L'ordre alphabétique (et une apostrophe)
SELECT prenom, periode, valeur
FROM prenoms
ORDER BY prenom
LIMIT 5;

-- Deux critères : l'année la plus récente, puis le plus grand nombre
SELECT prenom, periode, valeur
FROM prenoms
ORDER BY periode DESC, valeur DESC
LIMIT 5;

-- La requête écrite par l'IA (WHERE, c'est l'épisode 2)
SELECT prenom, valeur
FROM prenoms
WHERE sexe = 2 AND periode = 2025
ORDER BY valeur DESC
LIMIT 5;

-- À toi : trie par valeur dans le sens qui monte, cinq lignes.
-- Pourquoi le plus petit nombre est 5 ? Réponse dans le commentaire épinglé.
