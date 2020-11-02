class TweetsController < ApplicationController

  post '/signup' do
    @user = User.create(params)
    if()

    redirect '/tweets'
  end

end
