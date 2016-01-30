require "rails_helper"

module FeedTwitterBot
  RSpec.describe TwitterAccountsController, type: :routing do
    describe "routing" do

      it "routes to #index" do
        expect(:get => "/twitter_accounts").to route_to("twitter_accounts#index")
      end

      it "routes to #new" do
        expect(:get => "/twitter_accounts/new").to route_to("twitter_accounts#new")
      end

      it "routes to #show" do
        expect(:get => "/twitter_accounts/1").to route_to("twitter_accounts#show", :id => "1")
      end

      it "routes to #edit" do
        expect(:get => "/twitter_accounts/1/edit").to route_to("twitter_accounts#edit", :id => "1")
      end

      it "routes to #create" do
        expect(:post => "/twitter_accounts").to route_to("twitter_accounts#create")
      end

      it "routes to #update" do
        expect(:put => "/twitter_accounts/1").to route_to("twitter_accounts#update", :id => "1")
      end

      it "routes to #destroy" do
        expect(:delete => "/twitter_accounts/1").to route_to("twitter_accounts#destroy", :id => "1")
      end

    end
  end
end
