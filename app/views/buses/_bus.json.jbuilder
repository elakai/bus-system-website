json.extract! bus, :id, :body_number, :plate_number, :created_at, :updated_at
json.url bus_url(bus, format: :json)
