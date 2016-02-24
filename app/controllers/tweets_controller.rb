class TweetsController < ApplicationController

	def index
		@tweets = Tweet.all
	end

	def new
		@tweet = Tweet.new
	end

	def edit
		@tweet = Tweet.find(params[:id])

	end

	def create
		@tweet = Tweet.new(tweet_params)
		@tweet.save
		redirect_to tweets_path
		#puts tweet_params
	end

	def update
		@tweet = Tweet.find(params[:id])
		@tweet.update(tweet_params)
		redirect_to tweets_path
	end


	def tweet_params
		params.require(:tweet).permit(:id, :message)
	end
end
