# To create a database
create database record_company;
# To start working on it
use record_company;
# To create a table
create table test
( test_column INT);
# To alter the table { Like adding new column, changing the name of the column}
alter table test
add another_column varchar(50);
# To remove the table
drop table test;

#Creating advanced table
# By using auto increment property we don't need to add id by ourselves it will be automatically generated when we add new name
CREATE TABLE bands
( id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  primary key(id));
  
  #Creating another table and link it with the first one
  # We join two tables with the help of foreign key
  CREATE TABLE albums
  ( id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    release_year INT,
    band_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (band_id) REFERENCES bands(id)
    );
    
    
    
# Inserting values in our table
INSERT INTO bands (name)
VALUES ('Iron Maidden'),('Deuce'),('Avenged Sevenfold'),('Ankor');

SELECT * FROM bands;
# If we only want upper few lines from table
SELECT name FROM bands LIMIT 2;
# Adding alias to get a better idea
SELECT id as 'ID', name as 'Band Name' FROM bands;
# To order the result in ascending or descending
SELECT * FROM bands ORDER BY name;

# Inserting into albums table
INSERT INTO albums (name, release_year, band_id)
VALUES ('The Number of the Beasts',1985,1),
	   ('Power Slave',1984,1),
       ('Nightmare',2018,2),
       ('Nightmare',2010,3),
       ('Test Album',NULL, 3);
       
SELECT * FROM albums;

# TO get only unique values from our table
SELECT DISTINCT name as 'Name of the Albums' FROM albums;

# Updating value from the table
UPDATE albums
SET release_year = 1982
WHERE id=1;

# LIKE Operator
SELECT * FROM albums
WHERE name LIKE '%er%';

# BETWEEN Operator( Both parameters inclusive)
SELECT * FROM albums
WHERE release_year BETWEEN 2000 AND 2018;

# IS/ NOT IS
SELECT * FROM albums 
WHERE release_year IS NOT NULL;
SELECT * FROM albums 
WHERE release_year IS NULL;

# Deleting from table
# Delete command can delete one or more rows from table while drop commands removes the whole table
DELETE FROM albums
WHERE id=5;
SELECT * FROM albums; 

# JOINS
# Types of Joins 1) Inner Join 2) Left Join 3) Right Join 4) Full Outer Join
# 1) Inner Join- It is basically joining all the common rows from tables (Even if we don't write inner key word it is same) 
SELECT * FROM bands
JOIN albums  ON bands.id=albums.band_id;

# 2) Left Join- It selects all rows from left table and joins it with the matching values on right table( If no match then null)
SELECT * FROM bands
LEFT JOIN albums ON bands.id=albums.band_id;

# 3) Right Join- Just the opposite of left join
SELECT * FROM bands
RIGHT JOIN albums ON bands.id=albums.band_id;





# Aggregate- Three most common used functions in aggregate are 1) AVG 2) SUM 3) COUNT
SELECT AVG(release_year) FROM albums;

SELECT SUM(release_year) FROM albums;

SELECT band_id, COUNT(band_id) FROM albums
GROUP BY band_id;

SELECT b.name AS band_name, COUNT(a.id) as num_albums
FROM bands AS b
LEFT JOIN albums AS a ON b.id=a.band_id
GROUP BY b.id;









 










