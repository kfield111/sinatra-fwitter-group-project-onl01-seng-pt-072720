class TweetsController < ApplicationController

  get '/tweets' do
    if is_logged_in?
      @user = User.find(session[:user_id])
      @tweets = Tweet.all
      erb :'/tweets/show'
  end

end
