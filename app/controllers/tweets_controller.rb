class TweetsController < ApplicationController

  get '/tweets' do
      if logged_in?
        @tweets = Tweet.all
        erb :'/tweets/show'
      else
        redirect '/users/login'
      end
    end
  end

end
