require 'rails_helper'

RSpec.describe "submissions/show", type: :view do
  before(:each) do
    @submission = assign(:submission, Submission.create!(
      :result => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
  end
end
