require 'rails_helper'

RSpec.describe "rss_items/edit", type: :view do
  before(:each) do
    @rss_item = assign(:rss_item, RssItem.create!(
      :title => "MyString",
      :description => "MyString",
      :content => "MyString",
      :link => "MyString",
      :guid => "MyString",
      :author => "MyString",
      :categories => "MyString",
      :image => "MyString",
      :clean_description => "MyString",
      :published_on_twitter => false
    ))
  end

  it "renders the edit rss_item form" do
    render

    assert_select "form[action=?][method=?]", rss_item_path(@rss_item), "post" do

      assert_select "input#rss_item_title[name=?]", "rss_item[title]"

      assert_select "input#rss_item_description[name=?]", "rss_item[description]"

      assert_select "input#rss_item_content[name=?]", "rss_item[content]"

      assert_select "input#rss_item_link[name=?]", "rss_item[link]"

      assert_select "input#rss_item_guid[name=?]", "rss_item[guid]"

      assert_select "input#rss_item_author[name=?]", "rss_item[author]"

      assert_select "input#rss_item_categories[name=?]", "rss_item[categories]"

      assert_select "input#rss_item_image[name=?]", "rss_item[image]"

      assert_select "input#rss_item_clean_description[name=?]", "rss_item[clean_description]"

      assert_select "input#rss_item_published_on_twitter[name=?]", "rss_item[published_on_twitter]"
    end
  end
end
