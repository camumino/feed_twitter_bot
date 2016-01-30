require 'rails_helper'

module FeedTwitterBot
  RSpec.describe RssSource, type: :model do

    it "has a valid factory" do
      prueba = create(:rss_source)
      expect(prueba).to be_valid
    end
=begin
    it "is invalid without name" do
      survey = build(:survey, name: "")
      expect(survey).not_to be_valid
    end
=end
  end
end
