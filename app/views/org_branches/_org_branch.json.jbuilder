json.extract!(org_branch, :id, :name, :country, :state, :addres, :organizations_id, :created_at, :updated_at)
json.url(org_branch_url(org_branch, format: :json))
