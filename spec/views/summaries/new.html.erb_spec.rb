require 'rails_helper'

RSpec.describe "summaries/new", type: :view do
  before(:each) do
    assign(:summary, Summary.new(
      :post => nil,
      :summary => "MyText"
    ))
  end

  it "renders new summary form" do
    render

    assert_select "form[action=?][method=?]", summaries_path, "post" do

      assert_select "input#summary_post_id[name=?]", "summary[post_id]"

      assert_select "textarea#summary_summary[name=?]", "summary[summary]"
    end
  end
end
