require 'rails_helper'

RSpec.describe "rss_items/show", type: :view do
  before(:each) do
    @rss_item = assign(:rss_item, RssItem.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Content/)
    expect(rendered).to match(/Link/)
    expect(rendered).to match(/Guid/)
    expect(rendered).to match(/Author/)
    expect(rendered).to match(/Categories/)
    expect(rendered).to match(/Image/)
    expect(rendered).to match(/Clean Description/)
    expect(rendered).to match(/false/)
  end
end
