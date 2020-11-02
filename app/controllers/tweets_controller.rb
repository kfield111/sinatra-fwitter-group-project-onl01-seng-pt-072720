class TweetsController < ApplicationController

  post  '/tweets'  do
    @tweets =  Tweet.all
  end

end
