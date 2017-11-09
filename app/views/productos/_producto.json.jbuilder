json.extract! producto, :id, :nombre, :caracteristica, :created_at, :updated_at
json.url producto_url(producto, format: :json)
