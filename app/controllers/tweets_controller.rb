class TweetsController < ApplicationController

  get '/tweets' do
        @tweets = Tweet.all
        erb :'/tweets/show'
      else
        redirect '/users/login'
      end
    end

end
