class TweetsController < ApplicationController

  post  '/tweets'  do
    @tweets =  Tweet.all
    redirect '/tweets/show'
  end

end
