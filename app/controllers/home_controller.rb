class HomeController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @tweet = @user.tweets.create(tweet_params)
    #kaydettikten sonra articleın showuna geri yolluyorum
    redirect_to user_path(@user)
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
