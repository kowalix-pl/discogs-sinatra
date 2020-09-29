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
   a). Error msg for wrong password confirmation 
   b). Input validation for the forms
       - Album name
       - Password
       - Password confirmation
       - Author name 
       - Username 
       - User email 
   c). Proper display of the elements on the web-forms.  
   d). 404-page
   d). Ability to login with both email and the login.
Optional:
   e). Login status message {you are logged in/out}
   f). Some imagery. 
   g). Picture field for the album image.
   h). Album counter. How many albums are in the repo.
   i). Search field [find album]. 
6. Deploynment with GH.