require 'rails_helper'

RSpec.describe "organizations/new", type: :view do
  before(:each) do
    assign(:organization, Organization.new(
      name: "MyString",
      rif: "MyString",
      country: "MyString",
      state: "MyString",
      street: "MyString",
      logo: "MyString"
    ))
  end

  it "renders new organization form" do
    render

    assert_select "form[action=?][method=?]", organizations_path, "post" do

      assert_select "input[name=?]", "organization[name]"

      assert_select "input[name=?]", "organization[rif]"

      assert_select "input[name=?]", "organization[country]"

      assert_select "input[name=?]", "organization[state]"

      assert_select "input[name=?]", "organization[street]"

      assert_select "input[name=?]", "organization[logo]"
    end
  end
end
