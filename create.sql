CREATE TABLE IF NOT EXISTS artist (
	artist_id SERIAL PRIMARY KEY,
	artist_name VARCHAR(200) NOT NULL
);

CREATE TABLE IF NOT EXISTS genre(
    genre_id SERIAL PRIMARY KEY,
    genre_name VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS album(
    album_id SERIAL PRIMARY KEY,
    album_name VARCHAR(100) NOT NULL,
    year INTEGER
);

CREATE TABLE IF NOT EXISTS collection(
    collection_id SERIAL PRIMARY KEY,
    collection_name VARCHAR(300) NOT NULL,
    year INTEGER
);

CREATE TABLE IF NOT EXISTS soundtrack(
    soundtrack_id SERIAL PRIMARY KEY,
    soundtrack_name VARCHAR(150) NOT NULL,
    duration INTEGER, 
    album_id INTEGER REFERENCES album(album_id)
);

CREATE TABLE IF NOT EXISTS artist_albums(
    artist_id INTEGER REFERENCES artist(artist_id),
    album_id INTEGER REFERENCES album(album_id),
    CONSTRAINT artist_albums_pk PRIMARY KEY (artist_id, album_id)
);

CREATE TABLE IF NOT EXISTS artist_genres(
    artist_id INTEGER REFERENCES artist(artist_id),
    genre_id INTEGER REFERENCES genre(genre_id),
    CONSTRAINT artist_genres_pk PRIMARY KEY (artist_id, genre_id)
);

CREATE TABLE IF NOT EXISTS soundtrack_collections(
    soundtrack_id INTEGER REFERENCES soundtrack(soundtrack_id),
    collection_id INTEGER REFERENCES collection(collection_id),
    CONSTRAINT soundtrack_collections_pk PRIMARY KEY (soundtrack_id, collection_id)
);
