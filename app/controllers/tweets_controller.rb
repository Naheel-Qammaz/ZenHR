class TweetsController < ApplicationController

  def new
    @tweet = Tweet.new
  end


    def index 
        @tweets = Tweet.all
        @tweets = Tweet.order(:created_at) 
    end


    def create

        @tweet = Tweet.new(params.require(:tweet).permit(:description))
        if @tweet.save
            flash[:notice]= "Created succefully"
            redirect_to tweets_path
        else 
            render 'new'
        end
    end

    def destroy
        @tweet = Tweet.find(params[:id])
        @tweet.destroy
        flash[:notice]= "Deleted succefully"
        redirect_to tweets_path

        

    end


end
