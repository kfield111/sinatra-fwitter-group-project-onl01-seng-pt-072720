class TweetsController < ApplicationController

  post '/tweets'  do
    @tweets =  Tweet.all
    redirect '/tweets/index'
  end

end
