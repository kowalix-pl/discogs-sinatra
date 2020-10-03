class HomeController < ApplicationController

  get '/' do
    redirect "/albums"
  end

end 
