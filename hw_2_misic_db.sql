CREATE TABLE IF NOT EXISTS Tracks (
	id SERIAL PRIMARY KEY,
	album_id INTEGER NOT NULL REFERENCES album(id),
	collection_id INTEGER REFERENCES collection(id),
	name VARCHAR(40) NOT NULL,
	length TIME NOT NULL
);

CREATE TABLE IF NOT EXISTS Collections (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
	year DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS Albums (
	id SERIAL PRIMARY KEY,
	artist_id INTEGER NOT NULL REFERENCES artist(id),
	name VARCHAR(40) NOT NULL,
	year DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS Album_artist (
	id SERIAL PRIMARY KEY,
    album_id INTEGER REFERENCES album(id),
	artist_id INTEGER REFERENCES artist(id),
);

CREATE TABLE IF NOT EXISTS Artists (
	id SERIAL PRIMARY KEY,
	name_nickname VARCHAR(40) NOT NULL,
);

CREATE TABLE IF NOT EXISTS Musical_genres (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
);

CREATE TABLE IF NOT EXISTS Genre_artist (
	id SERIAL PRIMARY KEY,
    genre_id INTEGER REFERENCES genre(id),
	artist_id INTEGER REFERENCES artist(id),
);
