require 'rails_helper'

RSpec.describe "rss_sources/index", type: :view do
  before(:each) do
    assign(:rss_sources, [
      RssSource.create!(
        :name => "Name",
        :url => "Url",
        :active => false,
        :published => false
      ),
      RssSource.create!(
        :name => "Name",
        :url => "Url",
        :active => false,
        :published => false
      )
    ])
  end

  it "renders a list of rss_sources" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
