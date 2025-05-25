json.extract! address, :id, :street, :neighborhood, :postal_code, :reference_point, :treatment, :cep, :created_at, :updated_at
json.url address_url(address, format: :json)
