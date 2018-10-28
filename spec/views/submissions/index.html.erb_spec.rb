require 'rails_helper'

RSpec.describe "submissions/index", type: :view do
  before(:each) do
    assign(:submissions, [
      Submission.create!(
        :result => 2
      ),
      Submission.create!(
        :result => 2
      )
    ])
  end

  it "renders a list of submissions" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
