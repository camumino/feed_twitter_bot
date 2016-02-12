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

      def follow keywords = {}, count = 50
        users = []

        results = twitter_rest_client.search("colau", :count => count)


        raise "To implement"
      end

      def unfollow
        following = @twitter_rest_client.friend_ids.to_a # A los que seguimos
        followers = @twitter_rest_client.follower_ids.to_a # Los que nos siguen

        unfollow = following - followers
        logger.info("Dejamos de seguir a #{unfollow.count} que no nos siguen")
        
        unfollow.each do |user|
          begin    
            @twitter_rest_client.unfollow(user)
            logger.info("Dejamos de seguir a usuario con id #{user}")
            sleep 60
          rescue Exception => e
            logger.info("Error al dejar de seguir a: #{user}. Excepcion: #{e}")
          end
        end
      end

  end
end
