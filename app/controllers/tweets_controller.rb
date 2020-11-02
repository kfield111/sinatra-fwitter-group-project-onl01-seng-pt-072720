class TweetsController < ApplicationController

  get '/tweets/index' do
    @tweets = Tweet.all
    erb :tweets/index
  end

  post '/signup' do
    # if params[:username] == "" || params[:email] == "" || params[:password] == ""
    #   redirect '/failure'
    # else
    #   @user = User.create(:username => params[:username], :email => params[:email], :password => params[:password])
    #   redirect '/tweets/index'
    # end
    redirect '/tweets/index'
  end

end
