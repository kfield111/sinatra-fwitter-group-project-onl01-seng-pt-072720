class TweetsController < ApplicationController

  get '/tweets' do
    if logged_in?
      @user = @current_user
      @tweets = Tweet.all
      erb :'/tweets/show'
    else
     redirect '/login'
    end
  end

  post '/tweet' do
    if !params[:content].empty?
      current_user.tweets << tweet
      current_user.save
      redirect '/tweets'
    else
      redirect to '/tweets/new'
    end
  end

  get '/tweets' do
    if is_logged_in?
      @user = current_user
      @tweets = Tweet.all
      erb :'/tweets/tweets'
    else
      redirect '/login'
    end
  end



end
