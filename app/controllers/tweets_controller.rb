class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  def create

    @user = User.find(params[:user_id])
    @tweet = @user.tweets.new(tweet_params)
    if @tweet.save
      redirect_to user_path(@user)
    else
      render 'users/show'
    end

  end

  def destroy
    @user = User.find(params[:user_id])
    @tweet = @user.tweets.find(params[:id])
    @tweet.destroy
    redirect_to user_path(@user)
  end


  private

  def tweet_params
    params.require(:tweet).permit(:text)
  end
end