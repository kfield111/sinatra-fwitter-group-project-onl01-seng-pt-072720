class TweetsController < ApplicationController

  get '/tweets' do
    if logged_in?
      @user = User.find(session[:user_id])
      @tweets = Tweet.all
      erb :'/tweets/show'
    else
     redirect '/login'
    end
  end

end
