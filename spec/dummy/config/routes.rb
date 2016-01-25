Rails.application.routes.draw do

  mount FeedTwitterBot::Engine => "/feed_twitter_bot"
end
