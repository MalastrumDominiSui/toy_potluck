json.extract! item, :id, :name, :category, :amount, :claimed, :potluck_id, :created_at, :updated_at
json.url item_url(item, format: :json)
