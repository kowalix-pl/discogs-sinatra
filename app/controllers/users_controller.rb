class UsersController < ApplicationController

  # GET: /login
  get "/login" do
    erb :"/users/login.html"
  end

   # POST: /login
   post "/login" do
    @user = User.find_by(username: params["username"])
    if @user && @user.authenticate(params["password"])
      session[:user_id] = @user.id
      redirect "/"
    else  
      redirect "/login"
   end 
  end

  # GET: /users/new
  get "/register" do
    erb :"/users/register.html"
  end

  # POST: /users
  post "/register" do
    User.create(username: params["username"], email: params["email"],password: params["password"])
    redirect "/login"
  end
  
end 