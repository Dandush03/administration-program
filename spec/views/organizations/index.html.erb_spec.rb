require 'rails_helper'

RSpec.describe "organizations/index", type: :view do
  before(:each) do
    assign(:organizations, [
      Organization.create!(
        name: "Name",
        rif: "Rif",
        country: "Country",
        state: "State",
        street: "Street",
        logo: "Logo"
      ),
      Organization.create!(
        name: "Name",
        rif: "Rif",
        country: "Country",
        state: "State",
        street: "Street",
        logo: "Logo"
      )
    ])
  end

  it "renders a list of organizations" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Rif".to_s, count: 2
    assert_select "tr>td", text: "Country".to_s, count: 2
    assert_select "tr>td", text: "State".to_s, count: 2
    assert_select "tr>td", text: "Street".to_s, count: 2
    assert_select "tr>td", text: "Logo".to_s, count: 2
  end
end
