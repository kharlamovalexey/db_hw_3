--Задание 1
INSERT INTO genre(genre_name) 
VALUES ('genre 1'),
	   ('genre 2'),
	   ('genre 3'),
	   ('genre 4');

INSERT INTO artist(artist_name)
VALUES ('Artist'),
	   ('Some Artist'),
	   ('Another Artist'),
	   ('Artist 4');

INSERT INTO artist_genres(artist_id, genre_id)
VALUES (1, 1),
	   (1, 2),
	   (2, 1),
	   (2, 4),
	   (3, 3),
	   (4, 2),
	   (4, 4);
	  
INSERT INTO album(album_name, year)
VALUES ('album 1', 2015),
	   ('album 2', 2018),
	   ('album 3', 2019),
	   ('album 4', 2021),
	   ('album 5', 2020),
	   ('album 6', 2020);
	  
INSERT INTO artist_albums(artist_id, album_id)
VALUES (1, 4),
	   (2, 2),
	   (3, 1),
	   (4, 3),
	   (1, 5),
	   (1, 6);
	  
INSERT INTO collection(collection_name, year)
VALUES ('collection 1', 2018),
	   ('collection 2', 2019),
	   ('collection 3', 2020),
	   ('collection 4', 2022);
	  
INSERT INTO soundtrack(soundtrack_name, duration, album_id)
VALUES ('soundtrack 1', 150, 1),
	   ('My soundtrack', 145, 1),
	   ('Name of my soundtrack', 200, 2),	  
	   ('Мой саундтрэк', 136, 2),
	   ('soundtrack 3', 110, 3),
	   ('soundtrack 4', 115, 3),
	   ('soundtrack 5', 290, 4),
	   ('soundtrack 6', 208, 4),
	   ('soundtrack 7', 135, 5),
	   ('soundtrack 8', 230, 5),
	   ('soundtrack 9', 200, 6);

INSERT INTO soundtrack_collections(soundtrack_id, collection_id)
VALUES (1, 1),
	   (2, 1),
	   (3, 1),
	   (2, 2),
	   (3, 2),
	   (4, 2),
	   (2, 3),
	   (5, 3),
	   (6, 3),
	   (7, 4),
	   (3, 4),
	   (1, 4);
