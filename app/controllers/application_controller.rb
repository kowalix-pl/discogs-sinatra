require './config/environment'

class ApplicationController < Sinatra::Base
  use Rack::Session::Pool
  
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'  
  end

  helpers do 
    def current_user 
      binding.pry 
     if session[:user_id] 
      User.find(session[:user_id]) 
     else 
      nil 
     end 
    end 
  end

end
