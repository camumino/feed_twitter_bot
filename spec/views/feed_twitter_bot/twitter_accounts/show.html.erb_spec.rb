require 'rails_helper'

RSpec.describe "twitter_accounts/show", type: :view do
  before(:each) do
    @twitter_account = assign(:twitter_account, TwitterAccount.create!(
      :name => "Name",
      :app_id => "App",
      :publication => false,
      :adquisition => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/App/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
  end
end
