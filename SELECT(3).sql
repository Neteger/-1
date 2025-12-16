
--Запросы

--1. Количество исполнителей в каждом жанре.

SELECT g.name AS genre, COUNT(artist.id) AS artist_count
FROM genres g
JOIN artist_genre ag ON g.id = ag.genre_id
JOIN musicians artist ON ag.musicians_id = artist.id
GROUP BY g.name;

--2. Количество треков, вошедших в альбомы 2019–2020 годов.

SELECT alb.year, COUNT(t.id) AS track_count
FROM albums alb
JOIN songs t ON alb.id = t.album_id
WHERE alb.year BETWEEN 2019 AND 2020
GROUP BY alb.year;

--3. Средняя продолжительность треков по каждому альбому.

SELECT alb.title AS album, AVG(TIME_TO_SEC(t.duration)) / 60 AS average_duration_minutes
FROM albums alb
JOIN songs t ON alb.id = t.album_id
GROUP BY alb.title;

--4. Все исполнители, которые не выпустили альбомы в 2020 году.

SELECT artist.name
FROM musicians artist
WHERE artist.id NOT IN (
SELECT ea.musicians_id
FROM musicians_album ea
JOIN albums alb ON ea.album_id = alb.id
WHERE alb.year = 2020
);
--5. Названия сборников, в которых присутствует конкретный исполнитель

SELECT coll.title
FROM collection coll
JOIN songs_collection sc ON coll.collection_id = sc.collection_id
JOIN songs t ON sc.song_id = t.song_id
JOIN musicians_album ea ON t.album_id = ea.album_id
JOIN musicians artist ON ea.musicians_id = artist.id
WHERE artist.name = 'Artist1';
