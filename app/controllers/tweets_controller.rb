class TweetsController < ApplicationController

  post '/signup' do
    if params[:username] == "" || params[:email] == "" || params[:password] == ""
      redirect '/failure'
    else
      @user = User.create(:username => params[:username], :email => params[:email], :password => params[:password])
      redirect '/tweets/show'
    end
  end

end
