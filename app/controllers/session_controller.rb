class SessionController < ApplicationController

  # GET: /login
  get "/login" do
    erb :"/sessions/login.html"
  end

   # POST: /login
   post "/login" do
    @user = User.find_by(username: params["username"])
  
    @user = @user || User.find_by(email: params["username"])
  
    if @user && @user.authenticate(params["password"])
      session[:user_id] = @user.id
      redirect "/"
    else  
      @user=User.new
      @user.errors.add(:username,"Invalid login credentials")
      erb :"/sessions/login.html"
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

  # POST: /register
  post "/register" do
    @user = User.new(username: params["username"], 
      email: params["email"],
      password: params["password"],
      password_confirmation: params["password_confirmation"])
    unless @user.valid?
      erb :"/sessions/register.html"
    else
      @user.save 
      redirect "/login"
    end
  end
end 