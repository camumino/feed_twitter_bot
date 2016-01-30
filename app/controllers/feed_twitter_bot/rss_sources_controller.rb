require_dependency "feed_twitter_bot/application_controller"

module FeedTwitterBot
  class RssSourcesController < ApplicationController
    before_action :set_rss_source, only: [:show, :edit, :update, :destroy]

    # GET /rss_sources
    def index
      @rss_sources = RssSource.all
    end

    # GET /rss_sources/1
    def show
    end

    # GET /rss_sources/new
    def new
      @rss_source = RssSource.new
    end

    # GET /rss_sources/1/edit
    def edit
    end

    # POST /rss_sources
    def create
      @rss_source = RssSource.new(rss_source_params)

      if @rss_source.save
        redirect_to @rss_source, notice: 'Rss source was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /rss_sources/1
    def update
      if @rss_source.update(rss_source_params)
        redirect_to @rss_source, notice: 'Rss source was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /rss_sources/1
    def destroy
      @rss_source.destroy
      redirect_to rss_sources_url, notice: 'Rss source was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_rss_source
        @rss_source = RssSource.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def rss_source_params
        params.require(:rss_source).permit(:name, :url, :active, :published)
      end
  end
end
