require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :homepage
  end

  get '/signup' do
    erb :'/registration/signup'
  end

  post '/signup' do
    if user.save && user.username != "" && user.email != ""
      user = User.new(:username => params[:username], :email => params[:email], :password => params[:password])
      session[:user_id] = user.id
      redirect '/tweets'
    else
      redirect '/signup'
    end
  end

end
