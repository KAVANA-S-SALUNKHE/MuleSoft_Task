import mysql.connector

mydb=mysql.connector.connect(
    host= "localhost",
    user = "root",
    passwd="123456",
    database="Movies"

)
mycursor = mydb.cursor()

mycursor.execute("SELECT Movies.Movie_Title,Actor_Name,Actress_Name,Director_Name,Movies.Movie_year FROM Movies JOIN Stars 	ON Movies.Movie_Id=Stars.movie_id JOIN Actors 	ON Stars.actor_id = Actors.Actor_Id JOIN Actress ON Stars.actress_id = Actress.Actress_Id JOIN Directors ON Stars.director_id = Directors.Director_Id ORDER BY Movie_year desc")

for i in mycursor:
    print (i)