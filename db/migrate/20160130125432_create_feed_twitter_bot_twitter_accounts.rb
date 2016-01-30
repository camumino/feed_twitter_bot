class CreateFeedTwitterBotTwitterAccounts < ActiveRecord::Migration
  def change
    create_table :feed_twitter_bot_twitter_accounts do |t|
      t.string :name
      t.string :app_id
      t.boolean :publication
      t.boolean :adquisition

      t.timestamps
    end
  end
end
