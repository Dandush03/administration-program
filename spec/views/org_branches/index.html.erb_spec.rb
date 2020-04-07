require('rails_helper')

RSpec.describe('org_branches/index', type: :view) do
  before(:each) do
    assign(
      :org_branches,
      [
        OrgBranch.create!(
          name: 'Name',
          country: 'Country',
          state: 'State',
          addres: 'Addres',
          organizations: nil
        ),
        OrgBranch.create!(
          name: 'Name',
          country: 'Country',
          state: 'State',
          addres: 'Addres',
          organizations: nil
        )
      ]
    )
  end

  it 'renders a list of org_branches' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Country'.to_s, count: 2
    assert_select 'tr>td', text: 'State'.to_s, count: 2
    assert_select 'tr>td', text: 'Addres'.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
  end
end
