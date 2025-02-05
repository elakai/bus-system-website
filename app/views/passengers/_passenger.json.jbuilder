json.extract! passenger, :id, :name, :contact_number, :email_address, :created_at, :updated_at
json.url passenger_url(passenger, format: :json)
