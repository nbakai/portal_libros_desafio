json.extract! libro, :id, :title, :author, :price, :created_at, :updated_at
json.url libro_url(libro, format: :json)
