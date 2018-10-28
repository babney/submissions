require 'rails_helper'

RSpec.describe "publications/edit", type: :view do
  before(:each) do
    @publication = assign(:publication, Publication.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit publication form" do
    render

    assert_select "form[action=?][method=?]", publication_path(@publication), "post" do

      assert_select "input[name=?]", "publication[name]"
    end
  end
end
