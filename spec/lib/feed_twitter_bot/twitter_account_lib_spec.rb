require 'rails_helper'

module FeedTwitterBot
  RSpec.describe TwitterAccountLib, type: :model do
    subject { TwitterAccountLib.new("test") }

    it "name" do
      expect(subject.name).to eq("test")
    end

    it "publish" do
      expect { subject.publish }.to raise_error
    end


  end
end