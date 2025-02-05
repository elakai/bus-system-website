json.extract! reservation, :id, :passenger_id, :trip_id, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
