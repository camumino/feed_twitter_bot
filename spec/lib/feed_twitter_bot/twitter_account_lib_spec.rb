require 'rails_helper'

module FeedTwitterBot
  RSpec.describe TwitterAccountLib, type: :model do
    subject { 
      TwitterAccountLib.new(
        "TqYmYPUhYFsaBnZkYgFC8jBDf", 
        "986GMg4ELKvIDdyKkWPQOU5cXdYs1uCDgFfTqi4Lx1dFab79jh",
        "2791903301-dB8nEXd4kfo4xrUuqWD6mjD8jn3JEx6VGq6t3Jn",
        "hCzdD0o1QgMNR0OfUUqQHZNJfaHPWZXylv8mcBNHbFlXg",
        "9hWg7R4zFsNzzQuF268vkRZ33",
        "avW2UXeOn1bW5B5bu0LLqWyL9XM0ffEvb3iLxLsq8qUYnv3j0O",
        "2791903301-yNr8bkKnFC3Ny5paYOfuqBfZOFOdbyuTtBx6aE2",
        "HIIAwGdTra7TfUPTEXNYaJGsO2zepuk2heHtdr5FClL1u"
      ) 
    }

    it "twitter_rest_client" do
      expect(subject.twitter_rest_client).to be_a(Twitter::REST::Client) 
    end

    it "twitter_streaming_client" do
      expect(subject.twitter_streaming_client).to be_a(Twitter::Streaming::Client) 
    end

    it "name" do
      expect(subject.name).to eq("CamuminoDevelopment")
    end

    it "publish" do
      expect { subject.publish }.to raise_error
    end


  end
end
