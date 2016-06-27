require 'rails_helper'

RSpec.describe "summaries/edit", type: :view do
  before(:each) do
    @summary = assign(:summary, Summary.create!(
      :post => nil,
      :summary => "MyText"
    ))
  end

  it "renders the edit summary form" do
    render

    assert_select "form[action=?][method=?]", summary_path(@summary), "post" do

      assert_select "input#summary_post_id[name=?]", "summary[post_id]"

      assert_select "textarea#summary_summary[name=?]", "summary[summary]"
    end
  end
end
