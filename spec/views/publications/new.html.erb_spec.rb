require 'rails_helper'

RSpec.describe "publications/new", type: :view do
  before(:each) do
    assign(:publication, Publication.new(
      :name => "MyString"
    ))
  end

  it "renders new publication form" do
    render

    assert_select "form[action=?][method=?]", publications_path, "post" do

      assert_select "input[name=?]", "publication[name]"
    end
  end
end
