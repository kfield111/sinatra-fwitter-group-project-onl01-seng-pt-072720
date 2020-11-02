require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "penguins"
  end

  get '/' do
    @user = current_user if is_logged_in?
    erb :index
  end


  helpers do
    def current_user
      @current_user ||= User.find(session[:id]) if session[:id]
    end

    def is_logged_in?
      !!session[:user_id]
    end
  end

end
