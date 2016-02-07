# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :rss_source, :class => 'FeedTwitterBot::RssSource' do
    name "MyString"
    url "http://test.com"
    active false
    published false
  end
end