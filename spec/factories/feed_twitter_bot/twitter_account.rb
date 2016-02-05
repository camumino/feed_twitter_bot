# Read about factories at https://github.com/thoughtbot/factory_girl

#Factory.define :apple, :class => Fruit::Apple do |f|
FactoryGirl.define do
  factory :twitter_account, :class => 'FeedTwitterBot::TwitterAccount' do
    name "MyString"
    app_id "MyString"
    publication true
    adquisition false
  end
end