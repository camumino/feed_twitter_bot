require 'rails_helper'

module FeedTwitterBot
  RSpec.describe RssItem, type: :model do

    it "has a valid factory" do
      rss_item = create(:rss_item)
      expect(rss_item).to be_valid
    end
=begin
    it "is invalid without name" do
      rss_item = build(:rss_item, name: "")
      expect(rss_item).not_to be_valid
    end
=end
  end
end
