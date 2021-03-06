require 'rails_helper'

RSpec.describe "twitter_accounts/new", type: :view do
  before(:each) do
    assign(:twitter_account, TwitterAccount.new(
      :name => "MyString",
      :app_id => "MyString",
      :publication => false,
      :adquisition => false
    ))
  end

  it "renders new twitter_account form" do
    render

    assert_select "form[action=?][method=?]", twitter_accounts_path, "post" do

      assert_select "input#twitter_account_name[name=?]", "twitter_account[name]"

      assert_select "input#twitter_account_app_id[name=?]", "twitter_account[app_id]"

      assert_select "input#twitter_account_publication[name=?]", "twitter_account[publication]"

      assert_select "input#twitter_account_adquisition[name=?]", "twitter_account[adquisition]"
    end
  end
end
