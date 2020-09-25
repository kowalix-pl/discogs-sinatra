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
    redirect "/login"
  end
  
end 