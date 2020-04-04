require 'rails_helper'

RSpec.describe "org_branches/new", type: :view do
  before(:each) do
    assign(:org_branch, OrgBranch.new(
      name: "MyString",
      country: "MyString",
      state: "MyString",
      addres: "MyString",
      organizations: nil
    ))
  end

  it "renders new org_branch form" do
    render

    assert_select "form[action=?][method=?]", org_branches_path, "post" do

      assert_select "input[name=?]", "org_branch[name]"

      assert_select "input[name=?]", "org_branch[country]"

      assert_select "input[name=?]", "org_branch[state]"

      assert_select "input[name=?]", "org_branch[addres]"

      assert_select "input[name=?]", "org_branch[organizations_id]"
    end
  end
end
