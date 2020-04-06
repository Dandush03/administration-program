require 'rails_helper'

RSpec.describe 'clients/show', type: :view do
  before(:each) do
    @client = assign(:client, Client.create!(
                                name: 'Name',
                                display_name: 'Display Name',
                                email: 'Email',
                                currency: 'Currency',
                                user_id: 2
                              ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Display Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Currency/)
    expect(rendered).to match(/2/)
  end
end
