# Practice Exercise
CREATE DATABASE record_company;
USE record_company;

CREATE TABLE bands (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);
SELECT * FROM bands;

CREATE TABLE albums (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  release_year INT,
  band_id INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (band_id) REFERENCES bands(id)
);
SELECT * FROM albums;


CREATE TABLE songs
( id INT AUTO_INCREMENT,
  name VARCHAR (50) NOT NULL,
  length FLOAT NOT NULL,
  album_id INT,
  PRIMARY KEY(id),
  FOREIGN KEY (album_id) REFERENCES albums(band_id)
);

INSERT INTO bands(id,name) VALUES (1,'Seventh Wonder');
INSERT INTO bands(id,name) VALUES (2,'Metallica');
INSERT INTO bands(id,name) VALUES (3,'The Ocean');
INSERT INTO bands(id,name) VALUES (4,'Within Temptation');
INSERT INTO bands(id,name) VALUES (5,'Death');
INSERT INTO bands(id,name) VALUES (6,'Van Canto');
INSERT INTO bands(id,name) VALUES (7,'Dream Theater');


INSERT INTO albums(id,name,release_year,band_id) VALUES (1,'Tiara',2018,1);
INSERT INTO albums(id,name,release_year,band_id) VALUES (2,'The Great Escape',2010,1);
INSERT INTO albums(id,name,release_year,band_id) VALUES (3,'Mercy Falls',2008,1);
INSERT INTO albums(id,name,release_year,band_id) VALUES (4,'Master of Puppets',NULL,2);
INSERT INTO albums(id,name,release_year,band_id) VALUES (5,'...And Justice for All',1988,2);
INSERT INTO albums(id,name,release_year,band_id) VALUES (6,'Death Magnetic',2008,2);
INSERT INTO albums(id,name,release_year,band_id) VALUES (7,'Heliocentric',2010,3);
INSERT INTO albums(id,name,release_year,band_id) VALUES (8,'Pelagial',2013,3);
INSERT INTO albums(id,name,release_year,band_id) VALUES (9,'Anthropocentric',2010,3);
INSERT INTO albums(id,name,release_year,band_id) VALUES (10,'Resist',2018,4);
INSERT INTO albums(id,name,release_year,band_id) VALUES (11,'The Unforgiving',2011,4);
INSERT INTO albums(id,name,release_year,band_id) VALUES (12,'Enter',1997,4);
INSERT INTO albums(id,name,release_year,band_id) VALUES (13,'The Sound of Perseverance',1998,5);
INSERT INTO albums(id,name,release_year,band_id) VALUES (14,'Individual Thought Patterns',1993,5);
INSERT INTO albums(id,name,release_year,band_id) VALUES (15,'Human',1991,5);
INSERT INTO albums(id,name,release_year,band_id) VALUES (16,'A Storm to Come',2006,6);
INSERT INTO albums(id,name,release_year,band_id) VALUES (17,'Break the Silence',2011,6);
INSERT INTO albums(id,name,release_year,band_id) VALUES (18,'Tribe of Force',2010,6);
INSERT INTO albums(id,name,release_year,band_id) VALUES (19,'Bride by Force',2010,7);


INSERT INTO songs(id,name,length,album_id) VALUES (1,'Arrival',1+(30/60),1);
INSERT INTO songs(id,name,length,album_id) VALUES (2,'The Everones',6+(13/60),1);
INSERT INTO songs(id,name,length,album_id) VALUES (3,'Dream Machines',5+(38/60),1);
INSERT INTO songs(id,name,length,album_id) VALUES (4,'Against the Grain',6+(58/60),1);
INSERT INTO songs(id,name,length,album_id) VALUES (5,'Victorious',4+(55/60),1);
INSERT INTO songs(id,name,length,album_id) VALUES (6,'Tiara''s Song (Farewell Pt. 1)',7+(16/60),1);
INSERT INTO songs(id,name,length,album_id) VALUES (7,'Goodnight (Farewell Pt. 2)',7+(10/60),1);
INSERT INTO songs(id,name,length,album_id) VALUES (8,'Beyond Today (Farewell Pt. 3)',5+(06/60),1);
INSERT INTO songs(id,name,length,album_id) VALUES (9,'The Truth',4+(17/60),1);
INSERT INTO songs(id,name,length,album_id) VALUES (10,'By the Light of the Funeral Pyres',3+(54/60),1);
INSERT INTO songs(id,name,length,album_id) VALUES (11,'Damnation Below',6+(44/60),1);
INSERT INTO songs(id,name,length,album_id) VALUES (12,'Procession',0+(45/60),1);
INSERT INTO songs(id,name,length,album_id) VALUES (13,'Exhale',9+(30/60),1);
INSERT INTO songs(id,name,length,album_id) VALUES (14,'Wiseman',5+(42/60),2);
INSERT INTO songs(id,name,length,album_id) VALUES (15,'Alley Cat',6+(06/60),2);
INSERT INTO songs(id,name,length,album_id) VALUES (16,'The Angelmaker',8+(29/60),2);
INSERT INTO songs(id,name,length,album_id) VALUES (17,'King of Whitewater',7+(20/60),2);
INSERT INTO songs(id,name,length,album_id) VALUES (18,'Long Way Home',4+(26/60),2);
INSERT INTO songs(id,name,length,album_id) VALUES (19,'Move on Through',5+(04/60),2);
INSERT INTO songs(id,name,length,album_id) VALUES (20,'The Great Escape',30+(14/60),2);
INSERT INTO songs(id,name,length,album_id) VALUES (21,'A New Beginning',3+(05/60),3);
INSERT INTO songs(id,name,length,album_id) VALUES (22,'There and Back',3+(02/60),3);
INSERT INTO songs(id,name,length,album_id) VALUES (23,'Welcome to Mercy Falls',5+(11/60),3);
INSERT INTO songs(id,name,length,album_id) VALUES (24,'Unbreakable',7+(19/60),3);
INSERT INTO songs(id,name,length,album_id) VALUES (25,'Tears for a Father',1+(58/60),3);
INSERT INTO songs(id,name,length,album_id) VALUES (26,'A Day Away',3+(43/60),3);
INSERT INTO songs(id,name,length,album_id) VALUES (27,'Tears for a Son',1+(42/60),3);
INSERT INTO songs(id,name,length,album_id) VALUES (28,'Paradise',5+(46/60),3);
INSERT INTO songs(id,name,length,album_id) VALUES (29,'Fall in Line',6+(09/60),3);
INSERT INTO songs(id,name,length,album_id) VALUES (30,'Break the Silence',9+(29/60),3);
INSERT INTO songs(id,name,length,album_id) VALUES (31,'Hide and Seek',7+(46/60),3);
INSERT INTO songs(id,name,length,album_id) VALUES (32,'Destiny Calls',6+(18/60),3);
INSERT INTO songs(id,name,length,album_id) VALUES (33,'One Last Goodbye',4+(21/60),3);
INSERT INTO songs(id,name,length,album_id) VALUES (34,'Back in Time',1+(14/60),3);
INSERT INTO songs(id,name,length,album_id) VALUES (35,'The Black Parade',6+(57/60),3);
INSERT INTO songs(id,name,length,album_id) VALUES (36,'Battery',5+(13/60),4);
INSERT INTO songs(id,name,length,album_id) VALUES (37,'Master of Puppets',8+(35/60),4);
INSERT INTO songs(id,name,length,album_id) VALUES (38,'The Thing That Should Not Be',6+(36/60),4);
INSERT INTO songs(id,name,length,album_id) VALUES (39,'Welcome Home (Sanitarium)',6+(27/60),4);
INSERT INTO songs(id,name,length,album_id) VALUES (40,'Disposable Heroes',8+(17/60),4);
INSERT INTO songs(id,name,length,album_id) VALUES (41,'Leper Messiah',5+(40/60),4);
INSERT INTO songs(id,name,length,album_id) VALUES (42,'Orion',8+(27/60),4);
INSERT INTO songs(id,name,length,album_id) VALUES (43,'Damage Inc.',5+(32/60),4);
INSERT INTO songs(id,name,length,album_id) VALUES (44,'Blackened',6+(41/60),5);
INSERT INTO songs(id,name,length,album_id) VALUES (45,'...And Justice for All',9+(47/60),5);
INSERT INTO songs(id,name,length,album_id) VALUES (46,'Eye of the Beholder',6+(30/60),5);
INSERT INTO songs(id,name,length,album_id) VALUES (47,'One',7+(27/60),5);
INSERT INTO songs(id,name,length,album_id) VALUES (48,'The Shortest Straw',6+(36/60),5);
INSERT INTO songs(id,name,length,album_id) VALUES (49,'Harvester of Sorrow',5+(46/60),5);
INSERT INTO songs(id,name,length,album_id) VALUES (50,'The Frayed Ends of Sanity',7+(44/60),5);
INSERT INTO songs(id,name,length,album_id) VALUES (51,'To Live Is to Die',9+(49/60),5);
INSERT INTO songs(id,name,length,album_id) VALUES (52,'Dyers Eve',5+(13/60),5);
INSERT INTO songs(id,name,length,album_id) VALUES (53,'That Was Just Your Life',7+(08/60),6);
INSERT INTO songs(id,name,length,album_id) VALUES (54,'The End of the Line',7+(52/60),6);
INSERT INTO songs(id,name,length,album_id) VALUES (55,'Broken Beat & Scarred',6+(25/60),6);
INSERT INTO songs(id,name,length,album_id) VALUES (56,'The Day That Never Comes',7+(56/60),6);
INSERT INTO songs(id,name,length,album_id) VALUES (57,'All Nightmare Long',7+(58/60),6);
INSERT INTO songs(id,name,length,album_id) VALUES (58,'Cyanide',6+(40/60),6);
INSERT INTO songs(id,name,length,album_id) VALUES (59,'The Unforgiven III',7+(47/60),6);
INSERT INTO songs(id,name,length,album_id) VALUES (60,'The Judas Kiss',8+(01/60),6);
INSERT INTO songs(id,name,length,album_id) VALUES (61,'Suicide & Redemption',9+(58/60),6);
INSERT INTO songs(id,name,length,album_id) VALUES (62,'My Apocalypse',5+(01/60),6);
INSERT INTO songs(id,name,length,album_id) VALUES (63,'Shamayim',1+(53/60),7);
INSERT INTO songs(id,name,length,album_id) VALUES (64,'Firmament',7+(29/60),7);
INSERT INTO songs(id,name,length,album_id) VALUES (65,'The First Commandment of the Luminaries',6+(47/60),7);
INSERT INTO songs(id,name,length,album_id) VALUES (66,'Ptolemy Was Wrong',6+(28/60),7);
INSERT INTO songs(id,name,length,album_id) VALUES (67,'Metaphysics of the Hangman',5+(41/60),7);
INSERT INTO songs(id,name,length,album_id) VALUES (68,'Catharsis of a Heretic',2+(08/60),7);
INSERT INTO songs(id,name,length,album_id) VALUES (69,'Swallowed by the Earth',4+(59/60),7);
INSERT INTO songs(id,name,length,album_id) VALUES (70,'Epiphany',3+(37/60),7);
INSERT INTO songs(id,name,length,album_id) VALUES (71,'The Origin of Species',7+(23/60),7);
INSERT INTO songs(id,name,length,album_id) VALUES (72,'The Origin of God',4+(33/60),7);


SELECT name as 'Band Name' from bands;

SELECT * FROM albums
WHERE release_year IS NOT NULL
ORDER BY release_year
LIMIT 1;

SELECT  DISTINCT b.name as 'Band Name' FROM bands as b
JOIN albums as a ON b.id =  a.band_id;
  
SELECT bands.name as 'Band Name' FROM bands
LEFT JOIN albums ON bands.id = albums.band_id
GROUP BY albums.band_id
HAVING COUNT(albums.id) = 0;

DELETE FROM songs
where album_id =7;

SELECT * FROM songs;

select b.name as 'Band Name', count(a.id) as num_albums
from bands as b
left join albums as a on b.id = a.band_id
group by b.id
having num_albums = 1;

SELECT a.name,a.release_year,SUM(s.length) as 'Duration' FROM albums as a
JOIN songs as s on a.id = s.album_id
GROUP BY s.album_id
ORDER BY Duration DESC
LIMIT 1;

SELECT * FROM albums;

UPDATE albums SET release_year = 1998
WHERE id =4;

SELECT * FROM bands;
INSERT INTO bands 
VALUES (8, 'Wednessday');

INSERT INTO albums VALUES
(20, 'Starboy', 1999 , 8);

SELECT b.name as 'Band Name',b.id as 'Band ID', a.name as 'Album Name',a.id as 'Album Id'
FROM bands as b 
JOIN albums as a ON b.id = a.band_id;

SELECT AVG(length) as 'Average Song Duration' FROM songs;

SELECT a.name as Album, a.release_year as 'Release Year',MAX(s.length) as 'Duration'
FROM albums as a
JOIN songs as s ON a.id = s.album_id
GROUP BY s.album_id;

SELECT * FROM songs;

SELECT b.name as 'Band Name',COUNT(s.id) as 'Number of Songs'
FROM bands as b
JOIN albums as a ON b.id = a.band_id 
JOIN songs as s ON s.album_id = a.id
GROUP BY a.band_id;






DELETE FROM albums 
WHERE id = 20;
DELETE FROM bands 
WHERE id = 8;






# Other practice
SELECT min(length) FROM songs;

SELECT COUNT(*) FROM albums;

SELECT COUNT(name) FROM albums GROUP BY band_id;

SHOW tables;


SELECT b.name,a.name FROM bands as b
LEFT JOIN albums as a ON b.id = a.band_id;

SELECT count(s.name),a.name as total_songs FROM albums as a
RIGHT JOIN songs as s ON a.id = s.album_id
GROUP BY a.name;




