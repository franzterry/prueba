json.extract! service, :id, :nombre, :descripcion, :tarifa, :estado, :created_at, :updated_at
json.url service_url(service, format: :json)
