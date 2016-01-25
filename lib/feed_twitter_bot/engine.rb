module FeedTwitterBot
  class Engine < ::Rails::Engine
    isolate_namespace FeedTwitterBot

    config.generators do |g|
      g.test_framework :rspec
    end

  end
end
