class TweetsController < ApplicationController

  post '/signup' do
    @tweets = Tweet.all
    redirect '/tweets'
  end

end
