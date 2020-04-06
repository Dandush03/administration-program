require 'rails_helper'

RSpec.describe 'clients/edit', type: :view do
  before(:each) do
    @client = assign(:client, Client.create!(
                                name: 'MyString',
                                display_name: 'MyString',
                                email: 'MyString',
                                currency: 'MyString',
                                user_id: 1
                              ))
  end

  it 'renders the edit client form' do
    render

    assert_select 'form[action=?][method=?]', client_path(@client), 'post' do
      assert_select 'input[name=?]', 'client[name]'

      assert_select 'input[name=?]', 'client[display_name]'

      assert_select 'input[name=?]', 'client[email]'

      assert_select 'input[name=?]', 'client[currency]'

      assert_select 'input[name=?]', 'client[user_id]'
    end
  end
end
