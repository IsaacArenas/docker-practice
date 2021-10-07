CREATE USER 'admin' IDENTIFIED BY 'juiceBoxes';
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%';
CREATE DATABASE WORKSHOP;
use WORKSHOP;
CREATE TABLE images( id int , url varchar(255), name varchar(255), vertical boolean);
INSERT INTO images VALUES 
(1, "https://isaacarenasphotography.s3.amazonaws.com/places/barkyoto.jpg", "pontocho", true ),
(2, "https://isaacarenasphotography.s3.amazonaws.com/places/themet.jpg", "the Met", false),
(3, "https://isaacarenasphotography.s3.amazonaws.com/portrait/pic+of+the+pic.jpg", "pic of the pic", true),
(4, "https://isaacarenasphotography.s3.amazonaws.com/places/chicagoTheatre.jpg", "chicago theatre", false),
(5, "https://isaacarenasphotography.s3.amazonaws.com/places/lostintranslation.jpg", "lost in translation", false);