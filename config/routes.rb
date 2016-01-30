FeedTwitterBot::Engine.routes.draw do
  resources :rss_items
  resources :twitter_accounts
  resources :rss_sources
end
