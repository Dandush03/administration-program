require('rails_helper')

RSpec.describe('org_branches/edit', type: :view) do
  before(:each) do
    @org_branch = assign(
      :org_branch,
      OrgBranch.create!(
        name: 'MyString',
        country: 'MyString',
        state: 'MyString',
        addres: 'MyString',
        organizations: nil
      )
    )
  end

  it 'renders the edit org_branch form' do
    render

    assert_select 'form[action=?][method=?]', org_branch_path(@org_branch), 'post' do
      assert_select 'input[name=?]', 'org_branch[name]'

      assert_select 'input[name=?]', 'org_branch[country]'

      assert_select 'input[name=?]', 'org_branch[state]'

      assert_select 'input[name=?]', 'org_branch[addres]'

      assert_select 'input[name=?]', 'org_branch[organizations_id]'
    end
  end
end
