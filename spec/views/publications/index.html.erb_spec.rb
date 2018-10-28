require 'rails_helper'

RSpec.describe "publications/index", type: :view do
  before(:each) do
    assign(:publications, [
      Publication.create!(
        :name => "Name"
      ),
      Publication.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of publications" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
