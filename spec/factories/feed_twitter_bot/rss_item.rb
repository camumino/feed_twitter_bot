# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :rss_item, :class => 'FeedTwitterBot::RssItem' do
    title "MyString"
    description "MyString"
    content "MyString"
    link "MyString"
    guid "MyString"
    author "MyString"
    categories "MyString"
    pub_date "2016-01-30 13:59:46"
    image "MyString"
    clean_description "MyString"
    published_on_twitter false
    published_on_twitter_at "2016-01-30 13:59:46"
  end
end
