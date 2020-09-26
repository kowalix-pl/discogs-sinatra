class HomeController < ApplicationController

  get '/' do
    @current_user = current_user
    erb :"/home/index.html"
  end

end 
