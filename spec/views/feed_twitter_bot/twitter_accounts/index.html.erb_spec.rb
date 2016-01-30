require 'rails_helper'

RSpec.describe "twitter_accounts/index", type: :view do
  before(:each) do
    assign(:twitter_accounts, [
      TwitterAccount.create!(
        :name => "Name",
        :app_id => "App",
        :publication => false,
        :adquisition => false
      ),
      TwitterAccount.create!(
        :name => "Name",
        :app_id => "App",
        :publication => false,
        :adquisition => false
      )
    ])
  end

  it "renders a list of twitter_accounts" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "App".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
