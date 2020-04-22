from flask import Flask, render_template, request, jsonify ,session , flash , redirect , url_for , make_response
import json
import requests
from pprint import pprint
from werkzeug.security import generate_password_hash , check_password_hash       ## Imports for hash based security
from cassandra.cluster import Cluster
from datetime import timedelta
cluster = Cluster(contact_points=['172.17.0.2'],port=9042)                       ###Creating the cassandra connection
session1 = cluster.connect()                                                     ###Creating the session for the connection
app = Flask(__name__)
app.secret_key = '123@werkjln879'                                                ###secret key for the session
app.permanent_session_lifetime = timedelta(minutes=10)                           ## Time for session


##Below given are the two API template to fetch the data

movie_template='https://api.themoviedb.org/3/search/movie?api_key={api_key}&language=en-US&query={movie_name}&page=1&include_adult=false'

actor_template='https://api.themoviedb.org/3/search/person?api_key={api_key}&language=en-US&query={actor_name}&page=1&include_adult=false'

##Redirects the user to login method
@app.route("/")
def redict():
    return redirect('/login') 

## Method for user signup
@app.route('/signup',methods=['GET','POST'])
def signup():
    if request.method =='POST':
        form = request.form
        if form['password'] !=form['confirm_password']:
            flash ('Passwords and confirm password do not match!','')
            return render_template('signup.html')

        name=form['name']
        surname=form['surname']
        username=form['username']
        email=form['email']
        password=form['password']
        password=generate_password_hash(password)
        # session.execute("""Select * From pokemon.stats where name = '{}'""".format(name))
        session1.execute("""INSERT INTO api.user_details (name,surname,username,email,password) VALUES ('{}','{}','{}','{}','{}')""".format(name,surname,username,email,password))
        flash('You have been Successfully registred')
        return redirect('/login')
    return render_template('signup.html')

##method for user login and authentication
@app.route('/login',methods=['GET','POST'])
def login():
    if request.method =='POST':
        session.permanent= True
        form1 = request.form
        username1 = form1['username']
        values = session1.execute("""select * from api.user_details where username='{}'""".format(username1))
        for rows in values:
            if rows.username == form1['username']:                                  
                if check_password_hash(rows.password ,form1['password']):               #Decryting the password
                    session["user"] = rows.username
                    flash('You have been Successfully logged in to my API website','success')
                else: 
                    flash('Password is incorrect','danger')
                    return render_template('login.html')
            else:
                flash('User not found','danger')
                return render_template('login.html')
            return redirect('/user')
    else:
        if "user" in session:
            return redirect('/user')
    return render_template('login.html')

## Method for main page in the user session
@app.route('/user', methods=['GET','POST'])
def user():
    if "user" in session:
        if request.method =='POST':
            form0 = request.form
            id=form0['search']
            if id=='movie_name':
                return redirect('/welcome')
            else:
                return redirect('/logout')
        return render_template('user.html')
    else:
        return redirect('/login')

## Classes to pass the data to html pages
class movieClass:
    def __init__(self,vote_count,poster_path,mid,original_language,original_title,vote_average,overview,release_date):
        self.vote_count=vote_count
        self.poster_path=poster_path
        self.mid=mid
        self.original_language=original_language
        self.original_title=original_title
        self.vote_average=vote_average
        self.overview=overview
        self.release_date=release_date

class actorClass:
    def __init__(self,name,profile_path,popularity,known_for_department):
        self.name=name
        self.profile_path=profile_path
        self.popularity = popularity
        self.known_for_department=known_for_department

class userClass:
    def __init__(self,name,surname,username,email):
        self.name=name
        self.surname=surname
        self.username=username
        self.email=email

## Search and call the external API's to get the data
@app.route('/welcome',methods=['GET','POST'])
def welcome():
    if "user" in session:
        if request.method =='POST':
          form2 = request.form
          name = form2['movie_name']
          criteria = form2['search']
          key = 'd26d0782656eaa6953dae14e27221b80'                              #Key for accessing the TMDB data
          movie_name = name.replace(" ", "%20")
          if criteria=='movie_name':

              tmdb_movie_url = movie_template.format(api_key = key,movie_name=movie_name)       ##Feeding the data to the API
              resp = requests.get(tmdb_movie_url)                                               ##Calling the external APi to get the data 
              if resp.ok:
                  movie_details = json.dumps(resp.json())
                  movie = json.loads(movie_details)
                  movies = []
                  for i in range(len(movie['results'])):
                      movies.append(movieClass(movie['results'][i]['vote_count'],movie['results'][i]['poster_path'],movie['results'][i]['id'],movie['results'][i]['original_language'],movie['results'][i]['original_title'],movie['results'][i]['vote_average'],movie['results'][i]['overview'],movie['results'][i]['release_date']))
                  return render_template('movieview.html',movies=movies)                ##Fetching the required data

              else:
                  print(resp.reason)

          else:
              tmdb_actor_url = actor_template.format(api_key = key,actor_name=movie_name)
              actor_resp = requests.get(tmdb_actor_url)
              if actor_resp.ok:
                  actor_details = json.dumps(actor_resp.json())
                  actor = json.loads(actor_details)
                  actors = []
                  for i in range(len(actor['results'])):
                      actors.append(actorClass(actor['results'][i]['name'],actor['results'][i]['profile_path'],actor['results'][i]['popularity'],actor['results'][i]['known_for_department']))
                  return render_template('actorview.html',actors=actors)
              else:
                  print(actor_resp.reason)
        return render_template('welcome.html')
    else:
        return redirect('/login')

## Logout method for session invalidation
@app.route('/logout', methods=['GET'])
def logout():
    if "user" in session:
        user = session["user"]
        flash(f"You have been logged out, {user}","info")

    session.pop("user",None)
    return redirect('/login')

##Get method to get the user details
@app.route('/records', methods=['GET'])
def get_all_records():
    value = session1.execute("""select * from api.user_details""")
    list=[]
    for rows in value:
        row=dict(name=rows.name,surname=rows.surname,username=rows.username,email=rows.email)
        list.append(row)
    return jsonify(list)

##Delete method to delet the user details
@app.route('/records/<user>', methods=['DELETE'])
def delete_a_band(user):

  values = session1.execute("""select * from api.user_details where username='{}'""".format(user))
  for rows in values:
    if rows.username == user:
        session1.execute("""DELETE from api.user_details where username='{}'""".format(user))
        return jsonify({'success': 'The user has been deleted!' }), 200 
    else:
        return jsonify({'error':'username not found!'}), 404  

#POST method to post the details of the user into Database
@app.route('/records', methods=['POST'])
def create_a_record():
    name=request.json['name']
    username =request.json['username']
    email=request.json['username']
    surname=request.json['username']
    password=request.json['username']
    session1.execute("""INSERT INTO api.user_details (name,surname,username,email,password) VALUES ('{}','{}','{}','{}','{}')""".format(name,surname,username,email,password))
    return jsonify({'message': 'created: /records/{}'.format(name)}), 201

##Implementation of HATEOAS for fetching the links for searching for a particular user details with username

@app.route('/record/<username>', methods=['GET'])
def get_all_record(username):
    values = session1.execute("""select * from api.user_details where username='{}'""".format(username))
    list=[]
    for rows in values:
        row1=dict(name=rows.name,surname=rows.surname,username=rows.username,email=rows.email)
        list.append(row1)
    return jsonify(list)

## Function to create the HATEOAS

def make_public_task(row):
    new_task = {}
    for field in row:
        new_task['href'] = url_for('get_all_records', username=field, _external=True)
    return new_task

##Method to fetch the record details

@app.route('/record', methods=['GET'])
def get_tasks():
    value = session1.execute("""select * from api.user_details""")
    return jsonify({'Value': [make_public_task(row) for row in value]})

## Error handler for incorrect paths

@app.errorhandler(404)
def not_found(error):
    return make_response(jsonify({'error': 'Not found'}), 404)

if __name__=="__main__":
    app.run(host='0.0.0.0',port=443,ssl_context=('cert.pem','key.pem'),debug=True)
