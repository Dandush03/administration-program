require 'rails_helper'

RSpec.describe 'clients/index', type: :view do
  before(:each) do
    assign(:clients, [
             Client.create!(
               name: 'Name',
               display_name: 'Display Name',
               email: 'Email',
               currency: 'Currency',
               user_id: 2
             ),
             Client.create!(
               name: 'Name',
               display_name: 'Display Name',
               email: 'Email',
               currency: 'Currency',
               user_id: 2
             )
           ])
  end

  it 'renders a list of clients' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Display Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Email'.to_s, count: 2
    assert_select 'tr>td', text: 'Currency'.to_s, count: 2
    assert_select 'tr>td', text: 2.to_s, count: 2
  end
end
