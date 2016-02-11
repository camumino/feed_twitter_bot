require "twitter"

module FeedTwitterBot
  class TwitterAccountLib

    def initialize(r_ck, r_cs, r_at, r_ats, s_ck, s_cs, s_at, s_ats)
      @twitter_rest_client = Twitter::REST::Client.new do |config|
        config.consumer_key    = r_ck
        config.consumer_secret = r_cs
        config.access_token = r_at
        config.access_token_secret = r_ats
      end

      @twitter_streaming_client = Twitter::Streaming::Client.new do |config|
        config.consumer_key    = s_ck
        config.consumer_secret = s_cs
        config.access_token = s_at
        config.access_token_secret = s_ats
      end
    end

    # GETTERS

    def twitter_rest_client
      @twitter_rest_client
    end

    def twitter_streaming_client
      @twitter_streaming_client
    end

    def name
      self.twitter_rest_client.user.name
    end
    

    # METHODS
    def publish
      raise "To implement"
    end

    def adquisition 
      raise "To implement"
    end

    private

      def follow
        raise "To implement"
      end

      def unfollow
        raise "To implement"
      end

  end
end
