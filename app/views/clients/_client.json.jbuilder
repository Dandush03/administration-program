json.extract! client, :id, :name, :display_name, :email, :currency, :user_id, :created_at, :updated_at
json.url client_url(client, format: :json)
