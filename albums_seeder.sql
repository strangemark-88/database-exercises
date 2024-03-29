USE codeup_test_db;

TRUNCATE albums;

-- Use INSERT to add records for all the albums from this list on Wikipedia that claim over 30 million sales (the first two tables).
-- For sales data, use the 'sales certification' column of the tables, not 'claimed sales'. For artists listed with 'Various Artists', just use the primary artist's name.
--
-- First write your queries as separate INSERT statements for each record and test. You should see no output.

-- Refactor your script to use a single INSERT statement for all the records and test it again. Again, this should not generate any output.

INSERT INTO albums(artist, name, release_date, genre, sales)
VALUES  ('Michael Jackson', 'Thriller', 1982, 'Pop, rock, R&B', 47.3),
        ('Eagles', 'Their Greatest Hits (1971–1975)', 1976, 'Country rock, soft rock, folk rock', 41.2),
        ('AC/DC', 'Back in Black', 1980, 'Hard Rock', 26.1),
        ('Pink Floyd', 'The Dark Side of the Moon', 1973, 'Progressive rock', 24.2),
        ('Whitney Houston', 'The Bodyguard', 1992, 'R&B, soul, pop, soundtrack', 28.4),
        ('Meat Loaf', 'Bat Out of Hell', 1977, 'Hard rock, glam rock, heavy metal', 21.5),
        ('Eagles', 'Hotel California', 1976, 'Soft rock', 31.5),
        ('Bee Gees', 'Saturday Night Fever', 1977, 'Disco', 21.6),
        ('Fleetwood Mac', 'Rumours', 1977, 'Soft rock', 27.9),
        ('Shania Twain', 'Come On Over', 1997, 'Country, pop', 29.6),
        ('Various artists', 'Grease: The Original Soundtrack from the Motion Picture', 1978, 'Rock and roll', 14.4),
        ('Led Zeppelin', 'Led Zeppelin IV', 1971, 'Hard rock, heavy metal, folk rock', 29.0),
        ('Michael Jackson', 'Bad', 1987, 'Pop, funk, rock', 19.3),
        ('Alanis Morissette', 'Jagged Little Pill', 1995, 'Alternative rock', 24.4),
        ('Celine Dion', 'Falling into You', 1996, 'Pop, soft rock', 20.2),
        ('The Beatles', 'Sgt. Pepper''s Lonely Hearts Club Band', 1967, 'Rock', 18.2),
        ('Various artists', 'Dirty Dancing', 1987, 'Pop, rock, R&B', 17.9),
        ('Michael Jackson', 'Dangerous', 1991, 'Rock, funk, pop', 17.3),
        ('Adele', '21', 2011, 'Pop, soul', 25.3),
        ('Celine Dion', 'Let''s Talk About Love', 1997, 'Pop, soft rock', 19.3),
        ('The Beatles', '1', 2000, 'Rock', 23.4),
        ('ABBA', 'Gold: Greatest Hits', 1992, 'Pop, disco', 23.0),
        ('Madonna', 'The Immaculate Collection', 1990, 'Pop, dance', 19.4),
        ('The Beatles', 'Abbey Road', 1969, 'Rock', 14.4),
        ('Bruce Springsteen', 'Born in the U.S.A.', 1984, 'Heartland rock', 19.6),
        ('Dire Straits', 'Brothers in Arms', 1985, 'Roots rock, blues rock, soft rock', 17.7),
        ('James Horner', 'Titanic: Music from the Motion Picture', 1997, 'Film Score', 18.1),
        ('Metallica', 'Metallica', 1991, 'Heavy metal', 25.2),
        ('Nirvana', 'Nevermind', 1991, 'Grunge, alternative rock', 16.7),
        ('Pink Floyd', 'The Wall', 1979, 'Progressive rock', 18.7),
        ('Santana', 'Supernatural', 1999, 'Latin rock', 20.5),
        ('Guns N'' Roses', 'Appetite for Destruction', 1987, 'Hard rock', 21.9);
