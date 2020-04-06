require 'rails_helper'

RSpec.describe 'clients/new', type: :view do
  before(:each) do
    assign(:client, Client.new(
                      name: 'MyString',
                      display_name: 'MyString',
                      email: 'MyString',
                      currency: 'MyString',
                      user_id: 1
                    ))
  end

  it 'renders new client form' do
    render

    assert_select 'form[action=?][method=?]', clients_path, 'post' do
      assert_select 'input[name=?]', 'client[name]'

      assert_select 'input[name=?]', 'client[display_name]'

      assert_select 'input[name=?]', 'client[email]'

      assert_select 'input[name=?]', 'client[currency]'

      assert_select 'input[name=?]', 'client[user_id]'
    end
  end
end
