require "rails_helper"

module FeedTwitterBot
  RSpec.describe RssSourcesController, type: :routing do
    describe "routing" do

      it "routes to #index" do
        expect(:get => "/rss_sources").to route_to("rss_sources#index")
      end

      it "routes to #new" do
        expect(:get => "/rss_sources/new").to route_to("rss_sources#new")
      end

      it "routes to #show" do
        expect(:get => "/rss_sources/1").to route_to("rss_sources#show", :id => "1")
      end

      it "routes to #edit" do
        expect(:get => "/rss_sources/1/edit").to route_to("rss_sources#edit", :id => "1")
      end

      it "routes to #create" do
        expect(:post => "/rss_sources").to route_to("rss_sources#create")
      end

      it "routes to #update" do
        expect(:put => "/rss_sources/1").to route_to("rss_sources#update", :id => "1")
      end

      it "routes to #destroy" do
        expect(:delete => "/rss_sources/1").to route_to("rss_sources#destroy", :id => "1")
      end

    end
  end
end
