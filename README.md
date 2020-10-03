1. Users can sign-in, sign-up,login, logout, and delete his account.
2. User has many albums, he can CRUD albums
3. User will keep the album artist and album title, his own rating of the ablums. 
4. Album has one user
[user's table] & [album's table]
Columns for the user table
- user name, email address, encrypted password
Album's table 
- album title, artist, rating, user_id

Approach with incremental testing steps
1. Start with the album. [Done]
2. Create the user. [Done]
3. Create the sessions (login/out/register) [Done]
4. Connect albums with users via foreign keys [Done]
5. Polishing - validations & checks/communication with user["Login/Logout"]
Must have:
Album list displayed in a table form [Done]
1.Album name|Album Title|Album Rating|[Done]
   a). Error msg for wrong password confirmation [Done]
   b). Input validation for the forms [Done]
       - Album name
       - Password
       - Password confirmation
       - Author name 
       - Username 
       - User email 
   c). Proper display of the elements on the web-forms. [Done]  
   d). 404-page [Done]
   d)Add return button from edit form to albums[Done]
   e). Ability to login with both email and the login.[Done]
Optional:
   f). Search field to find album. 
   g). Picture field for the album image.
   h). Album counter. How many albums are in the repo.
6. Deploynment with GH.

We are using partials to display error messages on models.

