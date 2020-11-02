class TweetsController < ApplicationController

  post '/signup' do
    if params[:username] == "" || params[:email] == "" || params[:password] == "")
      redirect '/failure'
    else
      redirect '/tweets'
    end
  end

end
