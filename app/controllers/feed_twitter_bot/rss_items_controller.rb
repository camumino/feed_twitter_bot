require_dependency "feed_twitter_bot/application_controller"

module FeedTwitterBot
  class RssItemsController < ApplicationController
    before_action :set_rss_item, only: [:show, :edit, :update, :destroy]

    # GET /rss_items
    def index
      @rss_items = RssItem.all
    end

    # GET /rss_items/1
    def show
    end

    # GET /rss_items/new
    def new
      @rss_item = RssItem.new
    end

    # GET /rss_items/1/edit
    def edit
    end

    # POST /rss_items
    def create
      @rss_item = RssItem.new(rss_item_params)

      if @rss_item.save
        redirect_to @rss_item, notice: 'Rss item was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /rss_items/1
    def update
      if @rss_item.update(rss_item_params)
        redirect_to @rss_item, notice: 'Rss item was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /rss_items/1
    def destroy
      @rss_item.destroy
      redirect_to rss_items_url, notice: 'Rss item was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_rss_item
        @rss_item = RssItem.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def rss_item_params
        params.require(:rss_item).permit(:title, :description, :content, :link, :guid, :author, :categories, :pub_date, :image, :clean_description, :published_on_twitter, :published_on_twitter_at)
      end
  end
end
