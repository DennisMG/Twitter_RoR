module TweetsHelper
	def new_tweet_link
		link_to 'New Tweet', new_user_tweet_path(@user)		
	end

	
end
