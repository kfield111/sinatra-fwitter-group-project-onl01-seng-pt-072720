class TweetsController < ApplicationController

  get '/tweets' do
    if logged_in?
      @tweets = Tweet.all
      erb :'/tweets/show'
    else
      erb :'/users/login'
    end
  end

end
