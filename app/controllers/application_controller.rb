require './config/environment'

class ApplicationController < Sinatra::Base
  
  
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'  
    enable :sessions
    set :session_secret, 'secret'
  end

  helpers do 
    def logged_in?
     !current_user.nil? 
    end
    
    def current_user 
     if session[:user_id] 
      User.find(session[:user_id]) 
     else 
      nil 
     end 
    end 
  end

end
