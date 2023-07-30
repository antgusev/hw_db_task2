CREATE TABLE IF NOT EXISTS Tracks (
	track_id SERIAL PRIMARY KEY,
	album_id INTEGER NOT NULL REFERENCES album(id),
	name VARCHAR(40) NOT NULL,
	length TIME NOT NULL
);

CREATE TABLE IF NOT EXISTS Collections (
	collection_id SERIAL PRIMARY KEY,
	name VARCHAR(40) UNIQUE NOT NULL,
	year DATE NOT NULL (year > 1900)
);

CREATE TABLE IF NOT EXISTS Track_collection (
	tr_coll_id SERIAL PRIMARY KEY,
    track_id INTEGER REFERENCES Tracks(id),
	collection_id INTEGER REFERENCES Collections(id),
);

CREATE TABLE IF NOT EXISTS Albums (
	id SERIAL PRIMARY KEY,
	artist_id INTEGER NOT NULL REFERENCES artist(id),
	name VARCHAR(40) UNIQUE NOT NULL,
	year DATE NOT NULL (year > 1900)
);

CREATE TABLE IF NOT EXISTS Album_artist (
	alb_art_id SERIAL PRIMARY KEY,
    album_id INTEGER REFERENCES Albums(id),
	artist_id INTEGER REFERENCES Artists(id),
);

CREATE TABLE IF NOT EXISTS Artists (
	artist_id SERIAL PRIMARY KEY,
	name_nickname VARCHAR(40) NOT NULL,
);

CREATE TABLE IF NOT EXISTS Musical_genres (
	genre_id SERIAL PRIMARY KEY,
	name VARCHAR(40) UNIQUE NOT NULL,
);

CREATE TABLE IF NOT EXISTS Genre_artist (
	art_gen_id SERIAL PRIMARY KEY,
    genre_id INTEGER REFERENCES Musical_genres(id),
	artist_id INTEGER REFERENCES Artists(id),
);
