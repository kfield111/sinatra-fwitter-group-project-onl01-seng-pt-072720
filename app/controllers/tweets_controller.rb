class TweetsController < ApplicationController

  get '/tweets' do
      @user = User.find(session[:user_id])
      @tweets = Tweet.all
      erb :'/tweets/show'
  end

end
