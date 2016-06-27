require 'rails_helper'

RSpec.describe "summaries/show", type: :view do
  before(:each) do
    @summary = assign(:summary, Summary.create!(
      :post => nil,
      :summary => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
  end
end
