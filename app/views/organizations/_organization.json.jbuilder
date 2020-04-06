json.extract!(organization, :id, :name, :rif, :country, :state, :street, :logo, :created_at, :updated_at)
json.url(organization_url(organization, format: :json))
