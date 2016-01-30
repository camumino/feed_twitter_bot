class CreateFeedTwitterBotRssItems < ActiveRecord::Migration
  def change
    create_table :feed_twitter_bot_rss_items do |t|
      t.string :title
      t.string :description
      t.string :content
      t.string :link
      t.string :guid
      t.string :author
      t.string :categories
      t.datetime :pub_date
      t.string :image
      t.string :clean_description
      t.boolean :published_on_twitter
      t.datetime :published_on_twitter_at

      t.timestamps
    end
  end
end
