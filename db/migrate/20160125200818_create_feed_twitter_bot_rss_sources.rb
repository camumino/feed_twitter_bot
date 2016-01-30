class CreateFeedTwitterBotRssSources < ActiveRecord::Migration
  def change
    create_table :feed_twitter_bot_rss_sources do |t|
      t.string :name
      t.string :url
      t.boolean :active
      t.boolean :published

      t.timestamps
    end
  end
end
