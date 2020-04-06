require 'rails_helper'

RSpec.describe 'org_branches/show', type: :view do
  before(:each) do
    @org_branch = assign(:org_branch, OrgBranch.create!(
                                        name: 'Name',
                                        country: 'Country',
                                        state: 'State',
                                        addres: 'Addres',
                                        organizations: nil
                                      ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Addres/)
    expect(rendered).to match(//)
  end
end
