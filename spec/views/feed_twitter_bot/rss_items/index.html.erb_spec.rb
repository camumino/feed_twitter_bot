require 'rails_helper'

RSpec.describe "rss_items/index", type: :view do
  before(:each) do
    assign(:rss_items, [
      RssItem.create!(
        :title => "Title",
        :description => "Description",
        :content => "Content",
        :link => "Link",
        :guid => "Guid",
        :author => "Author",
        :categories => "Categories",
        :image => "Image",
        :clean_description => "Clean Description",
        :published_on_twitter => false
      ),
      RssItem.create!(
        :title => "Title",
        :description => "Description",
        :content => "Content",
        :link => "Link",
        :guid => "Guid",
        :author => "Author",
        :categories => "Categories",
        :image => "Image",
        :clean_description => "Clean Description",
        :published_on_twitter => false
      )
    ])
  end

  it "renders a list of rss_items" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Content".to_s, :count => 2
    assert_select "tr>td", :text => "Link".to_s, :count => 2
    assert_select "tr>td", :text => "Guid".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => "Categories".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => "Clean Description".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
