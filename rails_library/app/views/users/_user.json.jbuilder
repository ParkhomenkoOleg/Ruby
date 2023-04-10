json.extract! user, :id, :name, :surname, :lastname, :date_of_birth, :created_at, :updated_at
json.url user_url(user, format: :json)
