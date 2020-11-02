class TweetsController < ApplicationController

  post '/signup' do
    @tweets = Tweet.all
    redirect '/tweets/index'
  end

end
