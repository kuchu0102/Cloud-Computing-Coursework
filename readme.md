                   *********************************************************************
				   *********************************************************************
                   **                                                                 **                    
				   **                 Cloud Computing Mini Project                    **
				   **                                                                 **
				   **     https://ec2-23-22-24-111.compute-1.amazonaws.com/login      **
				   *********************************************************************
				   *********************************************************************

The mini project has been made by using the TMDB(The movie database) https://www.themoviedb.org API's.

INSIGHTS:

1. User Sessions.
2. Hash based User Authentication.
3. HATEOS to process the image from TMDB API.
4. The application has been served over https.
5. The application support REST API's architecture.

Database setup:

The Database used is cassandra. The database contains single table.

USER_DETAILS
The table has below fields
* name 
* surname
* username
* email
* password

REST API's:

Below are the some operations on REST API's.

GET:

To get the details of user :

* curl -i --insecure https://ec2-23-22-24-111.compute-1.amazonaws.com/records

POST :
To post new user details into database user_details

* curl -i -k -H "Content-Type: application/json" -X POST -d '{"name":"kush1","surname":"kush1","email":"kush1","username":"kush1","pasword":"kush1"}' https://ec2-23-22-24-111.compute-1.amazonaws.com/records

DELETE : 

To delete a user from the database.

* curl --insecure -X "DELETE" https://ec2-23-22-24-111.compute-1.amazonaws.com/records/<'username'>

Login Page:

* This page uses GET and POST methods both. 
* The user authentication is hash-based.
* Application route is (/login). 
* A .html page is called to get the details from the user.
* Session has been created which last for 10 minutes. 

		Links :
		https://ec2-23-22-24-111.compute-1.amazonaws.com/login

1. The above provided link take to the login page.
2. The page asks for signin details and if you are a new user you can signup through the given button in the bottom of the form.
3. The user authentication is done by fetching the details from cassandra, if the user details do not match as per the database there is message displayed like 'Password is incorrect' or 'User not Found' and you are redirected to he same page to fill up the signin details again.
4. If the user details are correct you are redirected to the welcome page, which is the main page for user experience.
6. If a new user comes in, one can click on the SIGNUP button and will be redirected to the signup page.

User Sessions: 

1. User session gets created after a user has signin though the login page.
2*. The user gets 10 mins of session where he can do searches through API.
3. In between the session if user clicks in login page he will always be taken to welcome page.
4. After the session times end, the session automatically throughs out user to again login page.
5. The user can always exit through logout button from the session.

Signup Page:

* This page uses POST method to insert the new user details. 
* The Details are stored in casandra.
* The password is hashed.
* All the fields are protected and mandatory.
* Application route is (/signup). 

				Link : https://ec2-23-22-24-111.compute-1.amazonaws.com/signup

1. The form takes the user values and stores the data in cassandra.
2. Validation are put on password and confirm password.
3. After the successfull signup the user is redirected to /login page to login into his account.

User Page:

* This page uses POST method to take the input through radio buttons.
* Protected by user sessions
* Application route is (/user).

1. The User page is the main interface page for the user.
2. The user can only access the page if the session is valid and in case of invalid session he wiil be redirected to login page.
2. The user gets two radio buttons to either logout from the application or can proceed to do some searches.

Welcome Page:

* This page uses POST method to feed the data into API's and the GET to fetch the data from API
* The Details are displayed through HTML pages.
* Protected by user sessions
* Application route is (/welcome). 

1. This page is the one where all the searches are done.
2. There are two kinds of searches actor and movie provided by radio button.
3. User can choose the radio button and enter the text to search.
4. After the search user is taken two correspondoing html pages for actor and movie search.
    Here two External API call are done
    For movie details:
    'https://api.themoviedb.org/3/search/movie?api_key={api_key}&language=en-US&query={movie_name}&page=1&include_adult=false'
    For actor details:
    'https://api.themoviedb.org/3/search/person?api_key={api_key}&language=en-US&query={actor_name}&page=1&include_adult=false'
5. The user can search untill the session is valid and is invalidated 10 mins after login time.

Logout:

* This page uses POST method.
* Invalidates the session
* Application route is (/logout). 

1. The logout radio key is provided in the user page. 
2. User can select the key and session will be logged out and will be redirected to the login page.
