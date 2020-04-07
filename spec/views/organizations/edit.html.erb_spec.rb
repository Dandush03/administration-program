require('rails_helper')

RSpec.describe('organizations/edit', type: :view) do
  before(:each) do
    @organization = assign(
      :organization,
      Organization.create!(
        name: 'MyString',
        rif: 'MyString',
        country: 'MyString',
        state: 'MyString',
        street: 'MyString',
        logo: 'MyString'
      )
    )
  end

  it 'renders the edit organization form' do
    render

    assert_select 'form[action=?][method=?]', organization_path(@organization), 'post' do
      assert_select 'input[name=?]', 'organization[name]'

      assert_select 'input[name=?]', 'organization[rif]'

      assert_select 'input[name=?]', 'organization[country]'

      assert_select 'input[name=?]', 'organization[state]'

      assert_select 'input[name=?]', 'organization[street]'

      assert_select 'input[name=?]', 'organization[logo]'
    end
  end
end
