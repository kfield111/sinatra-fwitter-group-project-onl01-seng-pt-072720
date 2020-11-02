class TweetsController < ApplicationController

  get '/tweets' do
        @tweets = Tweet.all
        erb :'/tweets/show'
    end

end
