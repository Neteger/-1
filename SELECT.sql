-- 1. Название и продолжительность самого длительного трека
SELECT title, duration
FROM tracks
ORDER BY duration DESC
LIMIT 1;

-- 2. Название треков, продолжительность которых не менее 3,5 минут
SELECT title
FROM tracks
WHERE duration >= '00:03:30';

-- 3. Названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT title
FROM compilations
WHERE year BETWEEN 2018 AND 2020;

-- 4. Исполнители, чьё имя состоит из одного слова
SELECT name
FROM artists
WHERE name NOT LIKE '% %';

-- 5. Название треков, которые содержат слово «мой» или «my»
SELECT title
FROM tracks
WHERE title LIKE '%мой%' OR title LIKE '%my%';
