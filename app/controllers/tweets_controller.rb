class TweetsController < ApplicationController

  post '/signup' do
    @user = User.create(params)
    if(@user.username == "" || @user.email == "" || @user.password == "")
      redirect '/failure'
    else
      redirect '/tweets'
    end
  end

end
