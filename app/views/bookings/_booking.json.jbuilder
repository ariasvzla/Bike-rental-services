json.extract! booking, :id, :start, :return, :created_at, :updated_at
json.url booking_url(booking, format: :json)
