--Задание 2
--1. Название и продолжительность самого длительного трека.
SELECT soundtrack_name, duration 
FROM soundtrack
WHERE duration = (SELECT MAX(duration) FROM soundtrack);

--2. Название треков, продолжительность которых не менее 3,5 минут.
SELECT soundtrack_name, duration 
FROM soundtrack
WHERE duration >= 60*3.5;

--3. Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT collection_name
FROM collection
WHERE year BETWEEN 2018 AND 2020;

--4. Исполнители, чьё имя состоит из одного слова.
SELECT artist_name 
FROM artist
WHERE artist_name NOT LIKE'% %'

--5. Название треков, которые содержат слово «мой» или «my».
SELECT soundtrack_name
FROM soundtrack
WHERE soundtrack_name~*'\m(my)\M' or soundtrack_name~*'\m(мой)\M'

--Задание 3
--1. Количество исполнителей в каждом жанре.
SELECT  g.genre_name, count(a.artist_id)
FROM genre g 
INNER JOIN artist_genres a
ON g.genre_id = a.genre_id 
GROUP BY g.genre_id  

--2. Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT  count(*) 
FROM album a 
INNER JOIN soundtrack s 
ON s.album_id = a.album_id 
WHERE a.year IN(2019, 2020)

--3. Средняя продолжительность треков по каждому альбому.
SELECT a.album_name, AVG(s.duration) avg_duration
FROM soundtrack s
INNER JOIN album a
ON s.album_id = a.album_id 
GROUP BY a.album_id 
order by avg_duration

--4. Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT artist_name FROM artist 
WHERE artist_id 
NOT IN(SELECT  a_a.artist_id 
		FROM artist_albums a_a
		INNER JOIN album a 
		ON a_a.album_id = a.album_id  
		WHERE a.year = 2020);

--5. Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT DISTINCT  c.collection_name 
FROM collection c
INNER JOIN soundtrack_collections s_c 
ON c.collection_id = s_c.collection_id 
INNER JOIN soundtrack s
ON s_c.soundtrack_id = s.soundtrack_id 
INNER JOIN album al
ON s.album_id = al.album_id 
INNER JOIN artist_albums ar_al 
ON ar_al.album_id  = al.album_id 
INNER JOIN artist a
ON a.artist_id =ar_al.artist_id 
where a.artist_name = 'Some Artist';

