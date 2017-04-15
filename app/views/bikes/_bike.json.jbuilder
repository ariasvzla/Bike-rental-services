json.extract! bike, :id, :title, :description, :quantity, :price, :status, :category, :created_at, :updated_at
json.url bike_url(bike, format: :json)
