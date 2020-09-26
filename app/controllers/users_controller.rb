class UsersController < ApplicationController

  # GET: /users
  get "/login" do
    erb :"/users/login.html"
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