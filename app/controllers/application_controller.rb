require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :session
    set :session_secret, "penguins"
  end

  get '/' do
    erb :homepage
  end

  get '/signup' do
    if Helpers.is_logged_in?(session)
      redirect '/tweets'
    else
      erb :'/registration/signup'
    end
  end

  post '/signup' do
    user = User.new(:username => params[:username], :email => params[:email], :password => params[:password])
    if user.save && user.username != "" && user.email != ""
      session[:user_id] = user.id
      redirect '/tweets'
    else
      redirect '/signup'
    end
  end


  helpers do
    def current_user
      @current_user = User.find(session[:user_id])
    end

    def logged_in?
      !!current_user
    end

end
