require 'rails_helper'

RSpec.describe "publications/show", type: :view do
  before(:each) do
    @publication = assign(:publication, Publication.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
