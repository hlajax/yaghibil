json.extract! expense, :id, :price, :description, :created_at, :updated_at
json.url expense_url(expense, format: :json)
