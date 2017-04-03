json.extract! potluck, :id, :name, :location, :description, :date, :time, :party_size, :user_id, :created_at, :updated_at
json.url potluck_url(potluck, format: :json)
