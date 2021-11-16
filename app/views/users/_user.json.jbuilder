json.extract! user, :id, :name, :password, :log_in_time, :created_at,
              :updated_at
json.url user_url(user, format: :json)
