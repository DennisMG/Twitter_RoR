class TweetsController < ApplicationController


  def index
    @tweets = Tweet.all
  end


  def show
    @tweet = Tweet.find(params[:id])

  end

  def new
    @user =User.find(params[:user_id])
    if current_user.id != @user.id
      redirect_to users_path
    end
    @tweet = Tweet.new
  end


  def edit
    @tweet=Tweet.find(params[:id])
  end


  def create
    @user = User.find(params[:user_id])

    @tweet = @user.tweets.build(tweet_params)

    if @tweet.save
      redirect_to @user
    else
      render :new
    end
  end


  def update

  end


  def destroy

  end

  private

    def tweet_params
      params.require(:tweet).permit(:content)
    end
end
