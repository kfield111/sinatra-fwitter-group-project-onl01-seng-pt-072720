require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "penguins"
  end

  get '/' do
    erb :homepage
  end


  helpers do
    def current_user
      @current_user ||= User.find(session[:id]) if session[:id]
    end

    def logged_in?
      !!session[:user_id]
    end
  end

end
