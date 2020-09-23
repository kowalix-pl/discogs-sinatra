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
1. Start with the album. 
2. Create the user. 
3. Create the sessions (login/out/register)
4. Connect albums with users via foreign keys
5. Polishing
6. Deploynment with GH.