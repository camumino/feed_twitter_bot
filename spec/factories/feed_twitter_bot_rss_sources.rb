# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :rss_source, :class => 'RssSource' do
    name "MyString"
    url "MyString"
    active false
    published false
  end
end