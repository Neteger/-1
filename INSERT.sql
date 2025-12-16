
-- Добавление исполнителей
INSERT INTO musician(id, nickname) VALUES
(1, 'Artist1'),
(2, 'Artist2'),
(3, 'Artist3'),
(4, 'Artist4');
-- Добавление жанров
INSERT INTO music_ganres(id, ganre_name) VALUES
(1, 'Pop'),
(2, 'Rock'),
(3, 'Hip-hop'),
(4, 'Electronic music');

-- Добавление альбомов
INSERT INTO albums(id, title, year) VALUES
(1, 'Album1', 2019),
(2, 'Album2', 2020),
(3, 'Album3', 2021);

-- Добавление треков
INSERT INTO songs(song_id, song_name, duration, album_id) VALUES
(1, 'Track1', '3:30', 1),
(2, 'Track2', '4:15', 1),
(3, 'Track3', '2:45', 2),
(4, 'Track4', '3:05', 2),
(5, 'Track5', '4:55', 3),
(6, 'Track6', '5:10', 3);
-- Добавление сборников
INSERT INTO collection(collection_id, collection_name, release_year) VALUES
(1, 'Compilation1', 2018),
(2, 'Compilation2', 2019),
(3, 'Compilation3', 2020),
(4, 'Compilation4', 2021);

-- Связь исполнителей и жанров
INSERT INTO musicians and genres (musicians_id, ganre_id) VALUES
(1, 1), -- Исполнитель1 - Поп
(1, 2), -- Исполнитель1 - Рок
(2, 2), -- Исполнитель2 - Рок
(2, 3), -- Исполнитель2 - Хип-хоп
(3, 3), -- Исполнитель3 - Хип-хоп
(4, 4); -- Исполнитель4 - Электронная музыка

-- Связь исполнителей и альбомов
INSERT INTO musicians and album(musicians_id, album_id) VALUES
(1, 1), -- Исполнитель1 - Альбом1
(2, 2), -- Исполнитель2 - Альбом2
(3, 3), -- Исполнитель3 - Альбом3
(4, 1), -- Исполнитель4 - Альбом1

-- Связь сборников и треков
INSERT INTO songs_collection(collection_id, song_id) VALUES
(1, 1), -- Сборник1 - Трек1
(1, 2), -- Сборник1 - Трек2
(2, 3), -- Сборник2 - Трек3
(3, 4), -- Сборник3 - Трек4
(3, 5), -- Сборник3 - Трек5
(4, 6); -- Сборник4 - Трек6

