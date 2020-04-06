require 'rails_helper'

RSpec.describe 'organizations/show', type: :view do
  before(:each) do
    @organization = assign(:organization, Organization.create!(
                                            name: 'Name',
                                            rif: 'Rif',
                                            country: 'Country',
                                            state: 'State',
                                            street: 'Street',
                                            logo: 'Logo'
                                          ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Rif/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Street/)
    expect(rendered).to match(/Logo/)
  end
end
