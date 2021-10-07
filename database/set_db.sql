CREATE USER 'admin' IDENTIFIED BY 'juice$Boxes';
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%';
CREATE DATABASE WORKSHOP;
use WORKSHOP;
CREATE TABLE images( id int , url varchar(255), name varchar(255), vertical boolean);
INSERT INTO images VALUES 
(1, "https://isaacarenasphotography.s3.amazonaws.com/places/barkyoto.jpg", "pontocho", true ),
(2, "https://isaacarenasphotography.s3.amazonaws.com/places/themet.jpg", "themet", true);