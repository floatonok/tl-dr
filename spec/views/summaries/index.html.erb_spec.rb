require 'rails_helper'

RSpec.describe "summaries/index", type: :view do
  before(:each) do
    assign(:summaries, [
      Summary.create!(
        :post => nil,
        :summary => "MyText"
      ),
      Summary.create!(
        :post => nil,
        :summary => "MyText"
      )
    ])
  end

  it "renders a list of summaries" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
