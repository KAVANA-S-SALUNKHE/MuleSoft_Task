CREATE database Movies;
USE Movies;

create table Movies
(
 Movie_Id VARCHAR(100) NOT NULL,
 Movie_Title VARCHAR(100) NOT NULL,
 Movie_Language VARCHAR(100)NOT NULL,
 Movie_year integer NOT NULL,
 Movie_duration time NOT NULL,
 CONSTRAINT XPKMovie_ID  PRIMARY KEY(Movie_Id)
);
CREATE UNIQUE INDEX XPKMovie_ID ON Movies (Movie_Id ASC);
INSERT INTO Movies(Movie_Id, Movie_Title, Movie_Language,Movie_year,Movie_duration)
 VALUES(01,'DDLJ','Hindi',1995,030900),
 (02,'Saathiya','Hindi',2002,021800),
 (03,'Kabhi Kushi Kabhi Ghum','Hindi',2001,033000),
 (04,'Om Shanti Om','Hindi',2007,024200),
 (05,'Mohabbataein','Hindi',2000,033600),
 (06,'Fanaa','Hindi',2006,025600),
 (07,'Çhennai Express','Hindi',2013,022100),
 (08,'Laxmi','Hindi',2020,020000),
 (09,'Naam Shabana','Hindi',2017,022700),
 (10,'Shershaah','Hindi',2021,021500);
 
  CREATE table Actors
 (
 Actor_Id VARCHAR(100) NOT NULL,
 Actor_Name VARCHAR(100) NOT NULL
 );
 INSERT INTO Actors(Actor_Id,Actor_Name)
 VALUES(101,'SRK'),
 (102,'Ámir Khan'),
 (103,'Vivek Oberoi'),
 (104,'Akshay Kumar'),
 (105,'Sidharth Malhotra'),
 (106,'Manoj Bajpayee');
 
 CREATE table Actress
 (
 Actress_Id VARCHAR(100) NOT NULL,
 Actress_Name VARCHAR(100) NOT NULL
 );
 INSERT INTO Actress(Actress_Id,Actress_Name)
 VALUES(201,'Kajol Devgan'),
 (202,'Rani Mukherji'),
 (203,'Áishwarya Rai'),
 (204,'Kiara Advani'),
 (205,'Deepika Padkone'),
 (206,'Taapsee Pannu');
 
 CREATE table Directors
 (
 Director_Id VARCHAR(100) NOT NULL,
 Director_Name VARCHAR (100) NOT NULL
 );
INSERT INTO Directors(Director_Id,Director_Name)
 VALUES(301,'Aditya Chopra'),
 (302,'Shaad Ali'),
 (303,'Karan Johar'),
 (304,'Farah Khan'),
 (305,'Kunal Kohli'),
 (306,'Rohit Shetty'),
 (307,'Raghavan Lowrence'),
 (308,'Shivam Nair'),
 (309,'Vishnuvardhan'); 

CREATE table Stars
(
movie_id int,
actor_id int,
actress_id int,
director_id int
);
INSERT INTO Stars(movie_id,actor_id,actress_id,director_id)
VALUES (01,101,201,301),
(02,103,202,302),
(03,101,201,303),
(04,101,205,304),
(05,101,203,301),
(06,102,201,304),
(07,101,205,306),
(08,104,204,307),
(09,106,206,308),
(10,105,204,309);




SELECT Movies.Movie_Title,Actor_Name,Actress_Name,Director_Name,Movies.Movie_year
FROM Movies
JOIN Stars
	ON Movies.Movie_Id=Stars.movie_id
JOIN Actors
	ON Stars.actor_id = Actors.Actor_Id
JOIN Actress
	ON Stars.actress_id = Actress.Actress_Id
JOIN Directors
	ON Stars.director_id = Directors.Director_Id
ORDER BY Movie_year desc;



  SELECT * FROM Movies;
  DROP table Movies;
  Drop table Actors;
  Drop table Actress;
  Drop table Directors;