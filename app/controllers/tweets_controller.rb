class TweetsController < ApplicationController

  get '/tweets' do
    if logged_in?
      @user = @current_user
      @tweets = Tweet.all
      erb :'/tweets/show'
    else
     redirect '/login'
    end
  end
end
