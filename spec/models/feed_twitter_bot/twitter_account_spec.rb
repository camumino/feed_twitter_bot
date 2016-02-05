require 'rails_helper'

module FeedTwitterBot
  RSpec.describe TwitterAccount, type: :model do

    it "has a valid factory" do
      twitter_account = create(:twitter_account)
      expect(twitter_account.valid?).to be true
    end

    it "is invalid without name" do
      twitter_account = build(:twitter_account, name: "")
      expect(twitter_account).not_to be_valid
    end

    it "is invalid without app_id" do
      twitter_account = build(:twitter_account, app_id: "")
      expect(twitter_account).not_to be_valid
    end

    it "is invalid without publication" do
      twitter_account = build(:twitter_account, publication: nil)
      expect(twitter_account).not_to be_valid
    end

    it "is invalid without adquisition" do
      twitter_account = build(:twitter_account, adquisition: nil)
      expect(twitter_account).not_to be_valid
    end

  end

end
