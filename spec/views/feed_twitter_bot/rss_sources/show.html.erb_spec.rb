require 'rails_helper'

RSpec.describe "rss_sources/show", type: :view do
  before(:each) do
    @rss_source = assign(:rss_source, RssSource.create!(
      :name => "Name",
      :url => "Url",
      :active => false,
      :published => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
  end
end
