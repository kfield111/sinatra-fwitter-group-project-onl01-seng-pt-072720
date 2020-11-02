class UsersController < ApplicationController

  get '/signup' do
    if logged_in?
      redirect '/tweets'
    else
      erb :'/registration/signup'
    end
  end

  post '/signup' do
    user = User.new(:username => params[:username], :email => params[:email], :password => params[:password])
    if user.save && user.username != "" && user.email != ""
      session[:user_id] = user.id
      redirect to "/tweets"
    else
      redirect '/signup'
    end
  end


  get '/login' do
    if logged_in?  == false
      binding.pry
      erb :'/users/login'
    end
  end

  post '/login' do
    redirect '/tweets'
  end

  get '/logout' do
      session.clear
      redirect "/login"
  end

end
