class SessionController < ApplicationController

  # GET: /login
  get "/login" do
    erb :"/sessions/login.html"
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

  get "/logout" do
   session.delete(:user_id)
   redirect "/login"
  end 


  # GET: /users/new
  get "/register" do
    erb :"/sessions/register.html"
  end

  # POST: /users
  post "/register" do
    @user = User.new(username: params["username"], email: params["email"],password: params["password"])
    if params["password"] != params["password_confirmation"]
      @user.errors.add(:password,"Your password and password confirmation do not match!")
      erb :"/sessions/register.html"
    else
      @user.save 
      redirect "/login"
    end
  end
end 