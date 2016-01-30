# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :feed_twitter_bot_twitter_account, :class => 'TwitterAccount' do
    name "MyString"
    app_id "MyString"
    publication false
    adquisition false
  end
end
