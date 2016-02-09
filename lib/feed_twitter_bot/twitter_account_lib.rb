module FeedTwitterBot
  class TwitterAccountLib

    def initialize(name)
      @name = name
    end

    # GETTERS

    def name
      @name
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