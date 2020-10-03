require './config/environment'

class ApplicationController < Sinatra::Base
  
  before do 
   unless logged_in?
    if (request.path_info != "/login") && (request.path_info != "/register")
       redirect "/login"
     end
     else
      if request.path_info == "/login"
        redirect "/albums"
      end 
    end 
  end 
 

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'  
    enable :sessions
    set :session_secret, 'secret'
  end
  
  not_found do
    status 404
    erb :"not_found.html"
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

    def errors_for(model,attribute)
      erb :"/partials/errors.html", {locals: {model: model, attribute: attribute}}
    end 
  end

end
