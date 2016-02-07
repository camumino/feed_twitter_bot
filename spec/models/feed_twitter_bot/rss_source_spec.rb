require 'rails_helper'

module FeedTwitterBot
  RSpec.describe RssSource, type: :model do

    it "has a valid factory" do
      rss_source = create(:rss_source)
      expect(rss_source).to be_valid
    end

    it "is invalid without name" do
      rss_source = build(:rss_source, name: "")
      expect(rss_source).not_to be_valid
    end

    it "is invalid without url" do
      rss_source = build(:rss_source, url: "")
      expect(rss_source).not_to be_valid
    end

    it "is invalid without a valid url" do
      rss_source = build(:rss_source, url: "urlincorrecta")
      expect(rss_source).not_to be_valid
    end

    it "is invalid without active" do
      rss_source = build(:rss_source, active: nil)
      expect(rss_source).not_to be_valid
    end

    it "is invalid without published" do
      rss_source = build(:rss_source, published: nil)
      expect(rss_source).not_to be_valid
    end    

  end
end
