require "rails_helper"

module FeedTwitterBot
  RSpec.describe RssItemsController, type: :routing do
    describe "routing" do

      it "routes to #index" do
        expect(:get => "/rss_items").to route_to("rss_items#index")
      end

      it "routes to #new" do
        expect(:get => "/rss_items/new").to route_to("rss_items#new")
      end

      it "routes to #show" do
        expect(:get => "/rss_items/1").to route_to("rss_items#show", :id => "1")
      end

      it "routes to #edit" do
        expect(:get => "/rss_items/1/edit").to route_to("rss_items#edit", :id => "1")
      end

      it "routes to #create" do
        expect(:post => "/rss_items").to route_to("rss_items#create")
      end

      it "routes to #update" do
        expect(:put => "/rss_items/1").to route_to("rss_items#update", :id => "1")
      end

      it "routes to #destroy" do
        expect(:delete => "/rss_items/1").to route_to("rss_items#destroy", :id => "1")
      end

    end
  end
end
